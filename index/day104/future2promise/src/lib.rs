use core::panic;

use neon::prelude::*;
use tokio::runtime::Runtime;

struct MyStruct {
    runtime: Runtime
}

impl Finalize for MyStruct { }

fn create_mystruct(mut cx: FunctionContext) -> JsResult<JsBox<MyStruct>> {
    let mystruct = MyStruct { runtime: Runtime::new().unwrap() };
    Ok(cx.boxed(mystruct))
}

fn get_content(mut cx: FunctionContext) -> JsResult<JsUndefined> {
    let mystruct = cx.argument::<JsBox<MyStruct>>(0)?;
    let file_path = cx.argument::<JsString>(1)?.value(&mut cx);
    let callback = cx.argument::<JsFunction>(2)?.root(&mut cx);
    let runtime = &mystruct.runtime;
    let content = tokio::fs::read_to_string(file_path);
    let queue = cx.queue();

    runtime.block_on(async move {
        let content = content.await;
        queue.send(move |mut cx| {
            let callback = callback.into_inner(&mut cx);
            let this = cx.undefined();
            let args: Vec<Handle<JsValue>> = match content {
                Ok(fcontent ) => vec![cx.null().upcast(), cx.string(fcontent).upcast()],
                Err(err) => vec![cx.error(err.to_string())?.upcast()],
            };
            callback.call(&mut cx, this, args)?;
            Ok(())
        });
    });
    Ok(cx.undefined())    
}

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    cx.export_function("create_mystruct", create_mystruct)?;
    cx.export_function("get_content", get_content)?;
    Ok(())
}
