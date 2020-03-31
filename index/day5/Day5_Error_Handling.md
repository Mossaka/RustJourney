# Error Handling

### panic

panic is something that should never happen. If if it does happen, you can either

1. unwind the stack
2. abort the process

panic is per thread.

### Results

`Result<T, E>` in Rust is simply `Either t e` in Haskell

- **`result.is_ok()`** and **`result.is_err()`** return a bool telling if result is a success result or an error result.
- **`result.ok()`** returns the success value, if any, as an `Option<T>`. If result is a success result, this returns `Some(success_value)`; otherwise, it returns `None`, discarding the error value.
- **`result.err()`** returns the error value, if any, as an `Option<E>`.
- **`result.unwrap_or(fallback)`** returns the success value, if result is a success result. Otherwise, it returns fallback, discarding the error value.
- **`result.unwrap_or_else(fallback_fn)`** is the same, but instead of passing a fallback value directly, you pass a function or closure.
- **`result.unwrap()`** also returns the success value, if result is a success result. However, if result is an error result, this method panics.
- **`result.expect(message)`** is the same as .unwrap(), but lets you provide a message that it prints in case of panic.
- **`result.as_ref()`** converts a `Result<T, E>` to a `Result<&T, &E>`, borrowing a reference to the success or error value in the existing result.
- **`result.as_mut()`** is the same, but borrows a mutable reference. The return type is `Result<&mut T, &mut E>`.

#### Type Alias

```rust
pub type Result<T> = result::Result<T, Error>;
```

In this way you don't have to pass the error message everytime it fails.

Recursively printing all the error messages:

```rust
use std::error::Error;
use std::io::{Write, stderr};
/// Dump an error message to `stderr`.
///
/// If another error happens while building the error message or /// writing to `stderr`, it is ignored.
fn print_error(mut err: &Error) {
    let _ = writeln!(stderr(), "error: {}", err);
    while let Some(cause) = err.cause() {
        let _ = writeln!(stderr(), "caused by: {}", cause);
        err = cause;
    }
}
```

#### What is `?`

It is the same as pattern matching a Result type. If it'ss returning successfully, then we get the value. If it returns an Error, we return the Error immediately.

**Note:** `main` cannot use `?` becuase it's return type is not Result.

The simplest way to handle errors in main() is to use `.expect()`.

### Declaring Own Error Type

An example from the textbook:

```rust
// json/src/error.rs
#[derive(Debug, Clone)]
pub struct JsonError {
    pub message: String,
    pub line: usize,
    pub column: usize,
}

// how to use?
return Err(JsonError {
    message: "expected ']' at end of array".to_string(),
    line: current_line,
    column: current_column
});

use std;
use std::fmt;
// Errors should be printable.
impl fmt::Display for JsonError {
    fn fmt(&self, f: &mut fmt::Formatter) -> Result<(), fmt::Error> {
        write!(f, "{} ({}:{})", self.message, self.line, self.column)
    }
}
// Errors should implement the std::error::Error trait.
impl std::error::Error for JsonError {
    fn description(&self) -> &str {
        &self.message
    }
}
```

### Extra: C to Rust using Result

source: http://kamalmarhubi.com/blog/2016/04/13/rust-nix-easier-unix-systems-programming-3/

```C
#include <signal.h>
#include <unistd.h>

int main(void) {
        pid_t child = fork();
        if (child) {  // in parent
                sleep(5);
                kill(child, SIGKILL);
        } else {  // in child
                for (;;);  // loop until killed
        }

        return 0;
}
```

The above code can end really bad if `fork()` returns `-1`. However it can be avoided by writting safely in Rust using nix:

```Rust
extern crate nix;

use nix::sys::signal::*;
use nix::unistd::*;

fn main() {
    match fork().expect("fork failed") {
        ForkResult::Parent{ child } => {
            sleep(5);
            kill(child, SIGKILL).expect("kill failed");
        }
        ForkResult::Child => {
            loop {}  // until killed
        }
    }
}
```
