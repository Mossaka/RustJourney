# RustJourney

My experience with learning Rust

Learning resources:

- Online course: shttps://www.cis.upenn.edu/~cis198/schedule/
- Textbook: Programming Rust Fast, Safe Systems Development
- Package website: https://crates.io/
- A simple C concurrent program written in Rust: http://kamalmarhubi.com/blog/2016/04/13/rust-nix-easier-unix-systems-programming-3/
- [Neon node-binding](https://github.com/neon-bindings/neon)
- [Asynchronous Programming in Rust](https://rust-lang.github.io/async-book/01_getting_started/01_chapter.html)

## Season 1:

| Day | Title |
| --- | --- |
| [Day 1](https://github.com/Mossaka/RustJourney/tree/master/index/day1) | Crab book chap 1, 2: What is Rust, Tour of Rust |
| [Day 2](https://github.com/Mossaka/RustJourney/tree/master/index/day2) | Crab book chap 2: Concurrency, Mandelbrot |
| [Day 3](https://github.com/Mossaka/RustJourney/tree/master/index/day3) | Crab book chap 3: Basic types |
| [Day 4](https://github.com/Mossaka/RustJourney/tree/master/index/day4) | Crab book chap 4, 5: Ownership, references |
| [Day 5](https://github.com/Mossaka/RustJourney/tree/master/index/day5) | Crab book chap 6, 7: Expression, error handling |
| [Day 6](https://github.com/Mossaka/RustJourney/tree/master/index/day6) | Crab book chap 8, 9, 10: Crates, enum, structs |
| [Day 7](https://github.com/Mossaka/RustJourney/tree/master/index/day7) | Crab book chap 11: Traits |
| [Day 8](https://github.com/Mossaka/RustJourney/tree/master/index/day8) | Crab book chap 13: Utility traits |
| [Day 9](https://github.com/Mossaka/RustJourney/tree/master/index/day9) | Crab book chap 14, 15: Closure, iterators |
| [Day 10](https://github.com/Mossaka/RustJourney/tree/master/index/day10) | Crab book chap 19: Concurrency |


## Season 2:
| Day | Title |
| --- | --- |
| [Day 1](https://github.com/Mossaka/RustJourney/tree/master/index/day100) | Crab book chap 20: Async Programming (Part 1)|
| [Day 2](https://github.com/Mossaka/RustJourney/tree/master/index/day101) | [Tokio tutorial](https://tokio.rs/tokio/tutorial) |
| [Day 3](https://github.com/Mossaka/RustJourney/tree/master/index/day102) | Async book chap 1,2: [async/await, executing futures and tasks](https://rust-lang.github.io/async-book/03_async_await/01_chapter.html) |
| [Day 4](https://github.com/Mossaka/RustJourney/tree/master/index/day103) | JS runtime, [Neon async](https://neon-bindings.com/docs/async/) |
| [Day 5](https://github.com/Mossaka/RustJourney/tree/master/index/day104) | Play around with Neon closure, async, [Future2Promise](https://github.com/Mossaka/RustJourney/tree/master/index/day104/future2promise) |
| Day 8 | Wasmtime Part 1 (wasmtime run wasm executable, or library) |
| Day 9 | Wasmtime Part 2 (wit and interface types) |
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
