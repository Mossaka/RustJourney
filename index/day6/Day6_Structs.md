# Structs

1. Named structs
2. Tuple-like structs
3. Unit structs

Methods in rust are **associated** functions.

```rust
/// A last-in, first-out queue of characters.
pub struct Queue<T> {
    older: Vec<T>, // older elements, eldest last.
    younger: Vec<T> // younger elements, youngest last.
}
impl<T> Queue<T> {
    /// a constructor. Notice we don't need to pass `self` because this is a static method.
    /// How to use: let mut q = Queue::new();
    pub fn new() -> Self {
        Queue { older: Vec::new(), younger: Vec::new() }
    }

    /// Push a character onto the back of a queue.
    pub fn push(&mut self, c: T) {
        self.younger.push(c);
    }

    /// Pop a character off the front of a queue.
    /// Return `Some(c)` if there /// was a character to pop, or `None` if the queue was empty.
    pub fn pop(&mut self) -> Option<T> {
        if self.older.is_empty() {
            if self.younger.is_empty() {
                return None;
            }
            // Bring the elements in younger over to older, and put them in
            // the promised order.
            use std::mem::swap;
            swap(&mut self.older, &mut self.younger);
            self.older.reverse();
        }
        // Now older is guaranteed to have something. Vec's pop method
        // already returns an Option, so we're set.
        self.older.pop()
    }

    /// unmutable reference
    pub fn is_empty(&self) -> bool {
        self.older.is_empty() && self.younger.is_empty()
    }

    /// A method wants to take a ownership of itself.
    pub fn split(self) -> (Vec<T>, Vec<T>) {
        (self.older, self.younger)
    }

}
```

It is conventional to name Rust constructor to `new`. Like `Vec::new`, `Box::new`.

Rust not only allows structs to have methods, it allows enum and primitive types to have methods as well. This is why Rust is not object-oriented programming. The syntax `impl` will be used in implementing traits.

I can read `impl<T> Queue<T>` as, for any type parameter `T`, here are some methods for struct `Queue<T>`.

`Self` is a special type parameter that represents `Queue<T>`.

### Deriving common traits

```rust
#[derive(Copy, Clone, Debug, PartialEq, PartialCmp)]
struct Point {
    x: f64,
    y: f64
}
```

In this way, we can use `copy`, `clone`, `debug`, `==` and `>=` on Point.

Skipped Interior Mutability.
