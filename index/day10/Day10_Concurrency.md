# Concurrency

Three ways that I should use Rust threads:

- Fork-join parallelism
- Channels
- Shared mutable state

## Fork-join Parallelism

Requirement: isolated units of work

```rust
use std::thread::spawn;

fn process_file_in_parallel(filenames: Vec<String>) -> io::Result<()> {
    const NTHREADS: usize = 8
    let worklists = split_vec_into_chunks(filenames, NTHREADS)
    let mut thread_handles = vec![];
    for worklist in worklists {
        thread_handles.push(
            spawn(move || process_files(worklist))
        )
    }

    for handle in thread_handles {
        handle.join().unwrap()?;
    }
    Ok(())
}
```

## Channels

Take a look at this example: https://github.com/ProgrammingRust/fingertips/blob/master/src/main.rs

- `std::marker::Send` types are safe to pass by value to another thread. They can be moved across threads
- `std::marker::Sync` types are safe to pass by non-mut reference to another thread. They can be shared across threads

When we `spawn` a thread, the closure we pass must be `Send`, which means all the values it contains must be `Send`. Similarly, if we try to send values through a `channel` to another thread, the values must be `Send`.

## Shared Mutable State

### Mutex

uncontrolled race conditions make programming intractable.

```rust
use std::sync::Mutex;

waiting_list: Mutex<Vec<u32>>

waitling_list = Mutex::new(vec![])
```

`Arc` is handy for sharing things across threads and `Mutex` is handy for mutable data that's shared across threads.

The only way to get the data is to call the `.lock()` method:

```rust
let mut guard = self.waiting_list.lock().unwrap();
```

Notice that `self.waiting_list.lock()` returns type `MutexGuard<Vec<u32>>`, which implements`Deref` trait so that they can behave as the type being wrapped does.

**There is no way to access the data in a Mutex without holding the lock.**

When guard is dropped, the lock is released.

In Rust, `mut` means _axclusive_ access. `Non-mut` means _shared_ access.

Problems with using Mutux:

- Valid Rust programs can't have data races, but they can still have other race conditions, that depends on timing among threads and may vary from run to run
- Mutexes encourage a "just-add-a-method" way of working that can lead to a monolithic blob of interrelated code
- Deadlock
- Poisoned Mutexes

### Deadlock

```rust
let mut guard1 = self.waiting_list.lock().unwrap();
let mut guard2 = self.waiting_list.lock().unwrap(); //deadlock
```

### Condition Variables (CondVar)

```rust
use std::sync::Condvar;

// When the desired condition becomes true:
self.has_data_condvar.notify_all();

//To go to sleep and wait for a condition to become true:
while !guard.has_data() {
    guard = self.has_data_condvar.wait(guard).unwrap();
}
```
