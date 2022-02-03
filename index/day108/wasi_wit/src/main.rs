use anyhow::Result;
use wasi_cap_std_sync::WasiCtxBuilder;
use wasi_common::{WasiCtx, StringArrayError};
use wasmtime::{Config, Engine, Instance, Linker, Module, Store};
use wasmtime_wasi::*;

fn main() -> Result<()> {

    let wasi = default_wasi()?;
    let wasm: &str = "play_linked.wasm";
    let engine = Engine::new(&default_config()?)?;
    let module = Module::from_file(&engine, wasm)?;
    let mut linker = Linker::new(&engine);
    wasmtime_wasi::add_to_linker(&mut linker, |cx: _| cx)?;
    let mut store = Store::new(&engine, wasi);
    let instance = linker.instantiate(&mut store, &module)?;
    instance.get_typed_func::<(i32, i32), i32, _>(&mut store, "main")?.call(&mut store, (0, 0))?;
    Ok(())
}

pub fn default_config() -> Result<Config> {
    let mut config = Config::new();
    config.wasm_backtrace_details(wasmtime::WasmBacktraceDetails::Enable);
    config.wasm_multi_memory(true);
    config.wasm_module_linking(true);
    Ok(config)
}

pub fn default_wasi() -> Result<WasiCtx, StringArrayError> {
    let mut ctx: WasiCtxBuilder = WasiCtxBuilder::new().inherit_stdio().inherit_args()?;
    ctx = ctx
        .preopened_dir(
            Dir::open_ambient_dir("./target", ambient_authority()).unwrap(),
            "cache",
        )
        .unwrap();

    Ok(ctx.build())
}