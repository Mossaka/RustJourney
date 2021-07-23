use neon::prelude::*;
use once_cell::sync::OnceCell;

// Globally store a static reference to the `MyError` class
static MY_ERROR: OnceCell<Root<JsFunction>> = OnceCell::new();

// Extension trait to allow throwing custom errors like `My_ERROR.throw(&mut cx)`
trait CustomError {
    // This doesn't take any arguments, but could easily take a message
    fn throw<'a, C, T>(&self, cx: &mut C) -> JsResult<T>
    where
        C: Context<'a>,
        T: Value;
}

// Implement `CustomError` for ALL errors in a `OnceCell`. This only needs to be
// done _once_ even if other errors are added.
impl CustomError for OnceCell<Root<JsFunction>> {
    fn throw<'a, C, T>(&self, cx: &mut C) -> JsResult<T>
    where
        C: Context<'a>,
        T: Value,
    {
        let args = Vec::<Handle<JsValue>>::with_capacity(0);
        let error = self
            .get()
            .expect("Expected module to be initialized")
            .to_inner(cx);

        // Use `.construct` to call this as a constructor instead of a normal function
        error.construct(cx, args).and_then(|err| cx.throw(err))
    }
}

// This method should be manually called _once_ from JavaScript to initialize the module
// It expects a single argument, the `MyError` class constructor
// This is a very common pattern in Neon modules
fn init(mut cx: FunctionContext) -> JsResult<JsUndefined> {
    MY_ERROR.get_or_try_init(|| Ok(cx.argument::<JsFunction>(0)?.root(&mut cx)))?;

    Ok(cx.undefined())
}

fn example(mut cx: FunctionContext) -> JsResult<JsString> {
    MY_ERROR.throw(&mut cx)
}

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    cx.export_function("init", init)?;
    cx.export_function("example", example)?;
    Ok(())
}