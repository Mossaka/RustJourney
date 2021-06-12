# RustJourney

My experience with learning Rust

Learning resources:

- Online course: shttps://www.cis.upenn.edu/~cis198/schedule/
- Textbook: Programming Rust Fast, Safe Systems Development
- Package website: https://crates.io/
- A simple C concurrent program written in Rust: http://kamalmarhubi.com/blog/2016/04/13/rust-nix-easier-unix-systems-programming-3/
- [Neon node-binding](https://github.com/neon-bindings/neon)
- [Asynchronous Programming in Rust](https://rust-lang.github.io/async-book/01_getting_started/01_chapter.html)

## Index:

### Day 1

- What is Rust
- Tour of Rust

### Day 2

- Concurrency
- Mandelbrot

### Day 3

- Basic Types

### Day 4

- Ownership
- Reference

### Day 5

- Expressions
- Error Handling

### Day 6

- Crates and Modules
- Enum
- Structs

### Day 7

- Traits

### Day 8

- Utility Traits

### Day 9

- Closure
- Iterator

### Day 10

- Concurrency

### Day 100

- Asynchronous Programming
  
### Day 101
- Tokio tutorial

### Day 102
- Executor
- Task
- Waker
- Future

### Day 103
- FFi (TODO)

### TODO
- Webassembly
- FFI

### Some Project Ideas
- Implement a web server in Rust
  - Simple echo server
    - release
    - document
  - Try Rocket
  - A server that does some computation
  - A async and concurrent KV server (`tokio` as executor runtime)
  - Replicated server (maybe use `Etcd`?)
    - gRPC 
  - Sharded server
- Rust for building programming languages
  - Parser combinator