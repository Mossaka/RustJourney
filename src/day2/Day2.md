# More Rust Fundamentals

- `for i in 0..limit {` will iterate a loop from 0 to limit (not including).
- `///` can mark the comment lines and are documentation comments.
- `pixel.0` referring to product type's first element.
- `pixel.0 as f64` is Rust's type conversion.
- `|spawner| { ... }` is Rust's closure form. `spawner` is the argument and `{...}` is function body. Notice that we don't need to specify the argument and return type of this closure.

```rust
let output = File::create(filename)?;
```

is equivalent to

```rust
let output = match File::create(filename) {
    Ok(f) => { f }
    Err(e) => { return Err(e); }
};
```

"Note: It’s a common beginner’s mistake to attempt to use ? in the main function. However, since main has no return value, this won’t work; you should use Result’s expect method instead. The ? operator is only useful within functions that themselves return Result."
