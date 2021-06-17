use lazy_static::lazy_static;
use neon::prelude::*;
use tokio::runtime::Runtime;

lazy_static! {
    pub(crate) static ref RUNTIME: Runtime = Runtime::new().unwrap();
}
struct User {
    content: String,
}

impl Finalize for User {}

fn read_file(mut cx: FunctionContext) -> JsResult<JsUndefined> {
    let file_path = cx.argument::<JsString>(0)?.value(&mut cx);
    let callback = cx.argument::<JsFunction>(1)?.root(&mut cx);
    let queue = cx.queue();

    let content = tokio::fs::read_to_string(file_path);
    RUNTIME.spawn(async move {
        let content = content.await;
        queue.send(move |mut cx| {
            let callback = callback.into_inner(&mut cx);
            let this = cx.undefined();
            let args: Vec<Handle<JsValue>> = match content {
                Ok(fcontent) => vec![cx.null().upcast(), cx.string(fcontent).upcast()],
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
    cx.export_function("readFile", read_file)?;
    Ok(())
}
