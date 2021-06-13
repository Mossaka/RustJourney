use neon::prelude::*;

fn inc_num(mut cx: FunctionContext) -> JsResult<JsUndefined> {
    let num = cx.argument::<JsNumber>(0)?.value(&mut cx);
    let callback = cx.argument::<JsFunction>(1)?.root(&mut cx).into_inner(&mut cx);
    let args: Vec<Handle<JsValue>> = vec![cx.null().upcast(), cx.number(num + 1 as f64).upcast()];
    let this = cx.undefined();
    callback.call(&mut cx, this, args)?;
    Ok(cx.undefined())
}

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    cx.export_function("inc_num", inc_num)?;
    Ok(())
}
