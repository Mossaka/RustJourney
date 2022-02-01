use wasmtime::*;
use anyhow::Result;
use wasmtime_wasi::{WasiCtxBuilder, WasiCtx};

fn main() -> Result<()> {
    let engine = Engine::default();
    let module = Module::from_file(&engine, "crates/wasi_lib/target/wasm32-wasi/debug/wasi_lib.wasm")?;
    let mut linker = Linker::new(&engine);

    let wasi_ctx = WasiCtxBuilder::new().inherit_stdio().inherit_args()?.build();
    let ctx = Context { wasi: wasi_ctx, runtime_data: 100 };
    wasmtime_wasi::add_to_linker(&mut linker, |cxt: &mut Context| &mut cxt.wasi)?;
    let mut store = Store::new(&engine, ctx);

    let instance = linker.instantiate(&mut store, &module)?;
    instance.get_typed_func::<(), (), _>(&mut store, "print_hello")?.call(&mut store, ())?;
    instance.get_typed_func::<i32, (), _>(&mut store, "print_increment_num")?.call(&mut store, 5)?;
    // instance.get_typed_func::<&str, (), _>(&mut store, "print_str")?.call(&mut store, "hello asdfasdfasdf")?; 
    // -> the trait `WasmTy` is not implemented for `&str`

    Ok(())
}

// fn main() -> Result<()> {
//     let engine = Engine::default();
//     let module = Module::from_file(&engine, "crates/wasi/target/wasm32-wasi/release/wasi.wasm")?;
//     let mut linker = Linker::new(&engine);

//     let wasi_ctx = WasiCtxBuilder::new().inherit_stdio().inherit_args()?.build();
//     let ctx = Context { wasi: wasi_ctx, runtime_data: 100 };
//     wasmtime_wasi::add_to_linker(&mut linker, |cxt: &mut Context| &mut cxt.wasi)?;
//     let mut store = Store::new(&engine, ctx);

//     // linker.module(&mut store, "wasi", &module)?;
//     // linker.get(&mut store, "wasi", "add_and_print");
//     linker.get_default(&mut store, "")?
//           .typed::<(), (), _>(&store)?
//           .call(&mut store, ())?;
//     // let instance = linker.instantiate(&mut store, &module)?;
//     // instance.get_typed_func::<(), (), _>(&mut store, "main")?.call(&mut store, ())?;

//     Ok(())
// }


// fn main() -> Result<()> {
//     let engine = Engine::default();
//     let module = Module::from_file(&engine, "crates/wasi/target/wasm32-wasi/release/wasi.wasm")?;
    
//     let mut store = Store::new(&engine, ());

//     let instance = Instance::new(&mut store, &module, &[])?;
//     instance.get_typed_func::<(),(), _>(&mut store, "main")?.call(&mut store, ())?;
//     Ok(())

//     /*
//     This code will fail with the error message: Error: expected 4 imports, found 0

//     This is because the compiled wasm file imports WASI functions:
//     1. fd_write
//     2. environ_get
//     3. environ_sizes_get
//     4. proc_exit

//     To fix this error, we will need to link to wasmtime_wasi
//     */
// }

fn host_hello() {

}

struct Context {
    pub wasi: WasiCtx,
    pub runtime_data: i32
}