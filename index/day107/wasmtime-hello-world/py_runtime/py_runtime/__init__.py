__version__ = '0.1.0'
from wasmtime import Engine, Func, Store, Module, Linker, WasiConfig, Instance


if __name__ == '__main__':
    
    engine = Engine()
    store = Store(engine)
    module = Module.from_file(engine, "crates/wasi/target/wasm32-wasi/release/wasi.wasm")
    module2 = Module.from_file(engine, "crates/wasi_lib/target/wasm32-wasi/debug/wasi_lib.wasm")

    linker = Linker(engine)
    linker.define_wasi()
    
    
    wasi = WasiConfig()
    wasi.inherit_stdout()
    store.set_wasi(wasi)
    
    linking = linker.instantiate(store, module)
    run = linking.exports(store)["main"]
    run(store, 0, 0)
     
    linking2 = linker.instantiate(store, module2)
    run = linking2.exports(store)["print_increment_num"]
    run(store, 5)
    