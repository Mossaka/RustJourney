# Closures

- `|arg| arg something` is the closure
- `||` is the empty argument
- ```rust
  move |cityL &City| -> i64 {-city.get_statistic(stat)};
  ```
  the move keyword tells Rust that a closure doesn't borrow the reference, it moves them.
- In rust, functions are first-class citizens.
  ```rust
  test_fn: fn(&City) -> bool
  ```
  can describe the type of an argument of function type.
  ```rust
  Fn(&City) -> bool
  ```
  This trait is automatically implemented by all functions and closure that take a single `&City`.

Notice:

`fn(&City) -> bool //fn type (functions only)` <br>
`Fn(&City) -> bool //Fn trait (both functions and closures)`

Why do we make such a distinction?

This is becasue a closure is callable, but its not a fn. A closure has its own type becasue it contain data. So every closure has an ad-hoc type created by the compiler.

What's the difference between closures in Rust and closures in other langauges?

- In other langauges, closures are

  - allocated in the heap
  - dynamically dispatched
  - garbage collected
  - ruling out **inlining**

- In Rust, closures are
  - aren't allocated in the heap unless you put them in Box, Vec or other containers.
  - Each closure has a distinct type so the compiler can inline the code
  - It is **Ok to use closures in tight loops**.
  - Closure does not contain a pointer to its code. As long as Rust knows the closure's type, it knows which code to run when you call it.

### Closures that kill

Closures that drop value, such like this:

```rust
let my_str = "hello".to_string();
let f = || drop(my_str);
```

they do not implement `Fn`, but `FnOnce`.

When we iterate values through a container, we should iterate over its reference. Otherwise the container will be moved.

### FnMut

Any closure that requires mut access to a value, but doesn't drop any values, is a FnMut closure. For example:

```rust
let mut i = 0;
let incr = || {
    i += 1;
    println!("Ding! i is now: {}", i);
};
call_twice(incr);
```
