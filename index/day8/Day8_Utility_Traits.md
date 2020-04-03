# Utility Traits

## Drop

```rust
trait Drop {
    fn drop(&mut self)
}
```

We implement this trait in order to customize how Rust drops values of a type.

If a type implements Drop, it cannot implement the Copy trait.

```rust
fn drop<T>(_x: T) {}
```

## Sized

A sized type is one whose values all have the same size in memory.

`str` is unsized. Array slice types like `[T]` are unsized. trait objects are unsized. Rust simply can't store unsized values in variables or pass them as arguments.

## Clone

the `std::clone::Clone` trait is for types that can make copies of themselves.

clone is expensive.

Note that `std::fs::File` provides a `try_clone` method.

## Copy

Rust permits a type to implement Copy only if a shallow byte-for-byte copy is all it needs. Types own heap buffers or OS handlers cannot implement Copy.

Any type implements Drop traits cannot be Copy.

I can ask Rust to derivce it: `#[derive(Copy, Clone)]`.

## Deref and DerefMut

dereferencing operators: `*`, and `.`.

deref coercions: one type is being coerced into behaving as another. Rust will automatically inserts a deref call if it will prevent a type mismatch.

## Default

Some types hvae a resonably obvious default value. The default for `Option` is `None`. The default value of String is empty String. All of Rust's collection types - HashMap, Vec, BinaryHeap and much more, implement Default.

Rust does not implicitly implement Default for struct types, but if all of a struct’s fields implement Default, you can implement Default for the struct automatically using `#[derive(Default)]`.

## AsRef and AsMut

When a type implements `AsRef<T>`, that means you can borrow a `&T` from it efficiently.

AsRef is typically used to make functions more flexible in the argument types they accept.

```rust
fn open<T: AsRef<Path>>(path: P) -> Result<File>
```

The above definition not only allow me to pass `&Path` as an argument, but also String, str, PathBuf, OsString, OsStr. I can do this:

```rust
let do_emacs = std::fs::File::open("./ice_cream.txt")?;
```

For any types T and U, if `T: AsRef<U>`, then `&T`.

## Borrow and BorrowMut

The `std::borrow::Borrow` trait is similar to AsRef: if a type implements `Borrow<T>`, then its borrow method efficiently borrows a `&T` from it.

```rust
trait Borrow<Borrowed: ?Sized> {
    fn borrow(&self) -> &Borrowed;
}
```

```rust
impl HashMap<K, V> where K: Eq + Hash {
    fn get<Q: ?Sized>(&self, key: &Q) -> Option<&V>
        where K: Borrow<Q>,
              Q: Eq + Hash
    { ... }
}
```

## From and Into

These two traits represent conversions that consume a value of one type, and return a value of another.

Whereas the AsRef and AsMut traits borrow a reference of one type from another, From and Into take ownership of their argument, transform it, and then return ownership of the result back to the caller.

```rust
trait Into<T>: Sized {
    fn into(self) -> T;
}
trait From<T>: Sized {
    fn from(T) -> Self;
}
```

From trait serves as a generic constructor for producing an instance of a type from some other single value. In other words, instead of implementing `from_array` or `from_u32` methods, we can simply implements `From<[u8,4]>` and `From<u32>`.

Given an approriate From implementation, the standard library automatically implements the corresponding Into trait.

## Cow

continue...
