# Chapter 20. Asynchronous Programming

Suppose I am writing a chat server. For each network conn, I can spwan a new thread for it. 
```rust
use std::{net, thread};

let listener = net::TcpListener::bind(address)?;

for socket_result in listener.incoming() {
    let socket = socket_result?;
    let groups = chat_group_table.clone();
    thread::spawn(|| {
        log_error(serve(socket, groups));
    });
}
```

This works if the number of connections are limited. However, if there are >10000 users, the therad's stack will not be able to handle it.

Rust *asynchronous tasks* can interleave many independent activites ona single thread or a pool of worker threads.
1. they are quicker to create
2. pass control more efficiently
3. minimal memory overhead
It's feasible to have >10000 async tasks running in a single process. 

The code is very similar to multi-threaded code, except for the blocking operations like I/O or mutexes. 


```rust
use async_std::{net, task};

let listener = net::TcpListener::bind(address).await?;

let mut new_connections = listener.incoming();
while let Some(socket_result) = new_connections.next().await {
    let socket = socket_result?;
    let groups = chat_group_table.clone();
    task::spawn(async {
        log_error(serve(socket, groups).await);
    });
}
```

This chapter will cover:
1. core concepts: `futures`, async functions, `await`, `tasks`, and the `block_on` and `spawn_local` executors. 
2. asynchronous blcoks and the `spawn` executor to get the **real** work done. 
3. built a chat server and client
4. implementation of `spawn_blocking` and `block_on`
5. what is `Pin`?

Traditionally, most of the time is waiting for the opearting system to finish the system call. While waiting, its single thread is blocked. 
Like this implementation
```rust
use std::io::prelude::*;
use std::net;

fn cheapo_request(host: &str, port: u16, path: &str)
                      -> std::io::Result<String>
{
    let mut socket = net::TcpStream::connect((host, port))?;

    let request = format!("GET {} HTTP/1.1\r\nHost: {}\r\n\r\n", path, host);
    socket.write_all(request.as_bytes())?;
    socket.shutdown(net::Shutdown::Write)?;

    let mut response = String::new();
    socket.read_to_string(&mut response)?;

    Ok(response)
}
```

## Futures
A new trait: `std::future::Future`
```rust
trait Future {
    type Output
    fn poll(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Self::Output>;
}

enum Poll<T> {
    Read(T),
    Pending,
}
```

The async version of any function takes the same arguments as the sync version, but the return type has a `Future` wrapped around it.

## Async Functions and Await Expressions
```rust
use async_std::io::prelude::*;
use async_std::net;

async fn cheapo_request(host: &str, port: u16, path: &str)
                            -> std::io::Result<String>
{
    let mut socket = net::TcpStream::connect((host, port)).await?;

    let request = format!("GET {} HTTP/1.1\r\nHost: {}\r\n\r\n", path, host);
    socket.write_all(request.as_bytes()).await?;
    socket.shutdown(net::Shutdown::Write)?;

    let mut response = String::new();
    socket.read_to_string(&mut response).await?;

    Ok(response)
}
```
The only differences are 
1. starts with `async fn`
2. it uses `async_std` of `connect, write_all, read_to_string`.
3. The code says `.await` after the call that retusn a future. 

Unlike an ordinary function, when you call an asynchronous function, it returns immediately, before the body begins execution at all.

`async fn f(...) -> T` automatically treats a future of `T`, not `T` directly.

## `block_on`
```rust
fn main() -> std::io::Result<()> {
    use async_std::task;

    let response = task::block_on(cheapo_request("example.com", 80, "/"))?;
    println!("{}", response);
    Ok(())
}
```

## Spawning Async Tasks
`async_std::task::spawn_local` takes a future and adds it to a pool that `block_on` will try polling whenever the future it's blocking on isn't ready. This means that I can pass a bunch of futures to `spwan_local` and the napply `block_on` to poll each future one by one. 

```rust
for (host, port, path) in requests {
    handles.push(task::spawn_local(cheapo_owning_request(host, port, path)));
}
```

### Analogy to `std::thread::spawn`
1. `std::thread::spawn(c)` takes a closure c and starts a thread running it, returning a `std::thread::JoinHandle` whose join method waits for the thread to finish and returns whatever c returned.
2. `async_std::task::spawn_local(f)` takes the future f and adds it to the pool to be polled when the current thread calls block_on. spawn_local returns its own `async_std::task::JoinHandle` type, itself a future that you can await to retrieve f’s final value.

## Async Blocks
Async block returns a *future* of the value of its last expression. I can use `await` within an async block
```rust
let serve_one = async {
    use async_std::net;

    // Listen for connections, and accept one.
    let listener = net::TcpListener::bind("localhost:8087").await?;
    let (mut socket, _addr) = listener.accept().await?;

    // Talk to client on `socket`.
    ...
};
```

`async move` will take onwership of the captured values, rather than just holding references to them. 
```rust
pub async fn many_requests(requests: Vec<(String, u16, String)>)
                           -> Vec<std::io::Result<String>>
{
    use async_std::task;

    let mut handles = vec![];
    for (host, port, path) in requests {
        handles.push(task::spawn_local(async move {
            cheapo_request(&host, port, &path).await
        }));
    }
    ...
}
```

## Spawning async tasks on a thread pool
`async_std::task::spawn` can spawn a future onto a pool of worker threads dedicated to polling futures that are ready to make progress. 

```rust
use async_std::task;

let mut handles = vec![];
for (host, port, path) in requests {
    handles.push(task::spawn(async move {
        cheapo_request(&host, port, &path).await
    }));
}
...
```

unlike `spawn_local`, `spawn` will try polling as soon as one of the threads from the thread pool is free. 

Popular choice: ✅

## But does your future implement Send?
Since the future is being sent off to another thread to run, the future must implement the `Send` marker trait. A future is `Send` if all the values it contains are Send: all the function arguments, local variables, and even anonymous temporary values must be safe to move to another thread. 


```rust
use async_std::task;
use std::rc::Rc;

async fn reluctant() -> String {
    let string = Rc::new("ref-counted string".to_string());

    some_asynchronous_thing().await;

    format!("Your splendid string: {}", string)
}

task::spawn(reluctant());
```

```
error: future cannot be sent between threads safely
    |
17  |     task::spawn(reluctant());
    |     ^^^^^^^^^^^ future returned by `reluctant` is not `Send`
    |

    |
127 | T: Future + Send + 'static,
    |             ---- required by this bound in `async_std::task::spawn`
    |
    = help: within `impl Future`, the trait `Send` is not implemented
            for `Rc<String>`
note: future is not `Send` as this value is used across an await
    |
10  |         let string = Rc::new("ref-counted string".to_string());
    |             ------ has type `Rc<String>` which is not `Send`
11  |
12  |         some_asynchronous_thing().await;
    |         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                  await occurs here, with `string` maybe used later
...
15  |     }
    |     - `string` is later dropped here
```

## Long running computations: yield_now and spawn_blocking

**The problem**: if poll method takes a long time, it will make other async tasks kwait longer. 

```rust
while computation_not_done() {
    ... do one medium-sized step of computation ...
    async_std::task::yield_now().await;
}
```
This approach isn’t always feasible, however. If you’re using an external crate to do the long-running computation, or calling out to C or C++, it may not be convenient to change that code to be more async-friendly.

For cases like this, you can use `async_std::task::spawn_blocking`. 

This function will start running it's own thread

```rust
async fn verify_password(password: &str, hash: &str, key: &str)
                        -> Result<bool, argonautica::Error>
{
    // Make copies of the arguments, so the closure can be 'static.
    let password = password.to_string();
    let hash = hash.to_string();
    let key = key.to_string();

    async_std::task::spawn_blocking(move || {
        argonautica::Verifier::default()
            .with_hash(hash)
            .with_password(password)
            .with_secret_key(key)
            .verify()
    }).await
}
```

**Make copies of the arguments, so the closure can be 'static.**

## Comparing Asynchronous Deisngs
- Rust `futures`
- JavaScript `promises`
- C# `tasks`

- In JavaScript and C#, an asynchronous function begins running as soon as it is called, and there is a **global event loop** built into the system library that resumes suspended async function calls when the values they were awaiting become available. 
- In Rust, however, an async call does nothing until you pass it to a function like block_on, `spawn`, or `spawn_local` that will poll it and drive the work to completion. These functions, called *executors*, play the role that other languages cover with a global event loop.

This means that Rust has no global event loop built into the system. (What is global event loop?)

**`tokio`** crate offers a set of similar executor functions. We will also implement our own **executor**. 


## Pinning
### The two life stages of a Future
1. The first stage begins when the future is created. Because the function's body hasn't begun execution, no part of it could possibly be borrwed yet. At this point, it's as safe to move as any other Rust value.
2. The second stage begins the first time the future is polled. Once the function's body has begun execution, it could borrow references to variables stored in the future and then await, leaving that part of the future borrowed. Starting after its first poll, we must assume the future may not be safe to move anymore. 
   
The `poll` method requires the future be passed as a `Pin<&mut Self>` value.

`Pin` is a wrapper for pointer types (&mut Self) that restricts how the pointers can be used, ensuring their referents cannot ever be moved again. 

### Pinned pointers
By *pointer*, we meant any type that implements `Deref`, and possibly `DerefMut`. A `Pin` wrapped around a pointer is called a *pinned pointer*. 
- Pin<&mut T>
- Pin<Box<T>>
  