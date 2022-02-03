## WASI_WIT Experimental

### How to run?
1. `cargo build`
2. `cargo run`

### Prerequisites

- [Wasmtime](https://github.com/bytecodealliance/wasmtime) at
  [v0.32](https://github.com/bytecodealliance/wasmtime/releases/tag/v0.32.0)
- [`wit-bindgen`](https://github.com/bytecodealliance/wit-bindgen) at
  [24c102fe](https://github.com/bytecodealliance/wit-bindgen/commit/24c102fe374b4c5698cfd4b7980f70ac2cf228fe)
- [WASI SDK](https://github.com/WebAssembly/wasi-sdk) at
  [v12+](https://github.com/WebAssembly/wasi-sdk/releases/tag/wasi-sdk-14) in
  `/opt/wasi-sdk/` (configurable in
  [`Makefile`](tests/modules/cache-cpp/Makefile))
- [Rust](https://www.rust-lang.org/) at
  [1.56+](https://www.rust-lang.org/tools/install) with the `wasm32-wasi` target
  configured
