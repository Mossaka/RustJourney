# How to use?

1. `cargo wasi build`
2. `wasmtime --invoke print_increment_num target/wasm32-wasi/debug/wasi_lib.wasm 4`