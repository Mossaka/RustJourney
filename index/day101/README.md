# Tokio

## main macro
```rust
#[tokio::main]
async fn main() {
    println!("hello");
}
```

is transformed to 
```rust
fn main() {
    let mut rt = tokio::runtime::Runtime::new().unwrap();
    rt.block_on(async {
        println!("hello");
    })
}
```
## spawning
A Tokio task is an asynchronous green thread. They are created by passing an async block on `tokio::spawn`, which returns a `JoinHandle`. The caller may obtain the return value using `.await` on the `JoinHandle`. 

```rust
#[tokio::main]
async fn main() {
    let handle = tokio::spawn(async {
        // Do some async work
        "return value"
    });

    // Do some other work

    let out = handle.await.unwrap();
    println!("GOT {}", out);
}
```

Tasks are the unit of execution managed by the **Tokio scheduler**
1. The spawned task may be executed on the same thread as where it was spawned.
2. Or it may execute on the different runtime thread. 

Task requires only a single allocation, and 64 bytes of memory. 

### Warnings

- If a single piece of data must be accessible from more than one task concurrently, then it must be shared using synchronization primitives such as `Arc`.
- Tasks spawned by `tokio::spawn` must implement Send. This allows the Tokio runtime to move the tasks between threads while they are suspended at an .await.
  
## Shared State
TODO