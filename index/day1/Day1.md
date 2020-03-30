# What is Rust?

Rust is a systems programming language. Rust is safe, concurrent language with the speed of C. Highlights of Rust:

- ownership
- moves
- borrows

Rust is statically typed. <br>
Rust is type safe. <br>
Rust does not need garbage collector.<br>

## Tools

- `cargo` is Rust’s compilation and package manager.
  - We can record new dependencies in `Cargo.toml`.
  - `cargo run`
  - `cargo clean`
- `rustc` is the Rust compiler. sometimes it’s useful to run it directly.
- `rustdoc` is the Rust documentation tool.

## Tour of Rust

- Rust only infers types within function bodies. So we **must** write out the types of parameters and return type.
- `!` means a macro invocation, not a function call. It can result in a `panic` termination.
- Rust typically does not use `return` if the function falls off the end. Use expression without semicolon.
- Functions performing input, output or interact with the OS all return `Result` type. (Which is `Maybe` or `Either` type in Haskell).
  - Ok(v)
  - Err(e)
  - `expect(e)` will return Ok value but prints a error message `e` if Err happens.
  - Rust `main` runs successfully if there is a return value.
  - `std::process::exit` can allow main to terminate with error status code.
  - & borrows a reference, \* derefenrece the variable. Will be learned in detail later.

## A Simple Web Server

- There is a library collection called `cartes.io`. A Rust package or library is called _crate_.
- `extern crate iron;` can bring iron avaliable to our program.
- `#[macro_use]` attribute tells that we are going to use macro in crate.
