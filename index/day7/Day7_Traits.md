# Traits

There are two ways to use traits, one is trait object, and another is generics.

### Trait object

A reference to a trait type is called a trait object. Since reference is a constant size type, we can use it directly in Rust.

```rust
use std::io::Write;
let mut buf: Vec<u8> = vec![];
let writer: Write = buf; // error: `Write` does not have a constant size
let writer: &mut Write = &mut buf; // ok
```

a trait object is a **fat pointer** that points to the value plut a vpointer to a table representing this value's type (vtable).

**_Remark_**: Rust automatically converts ordinary references into trait objects when needed.

### Generic Functions

```rust
fn say_hello<W: Write>(out: &mut W) -> std::io::Result<()> {
    out.write_all(b"hello world\n")?;
    out.flush()
}

say_hello(&mut local_file)?; // calls say_hello::<File>
say_hello(&mut bytes)?; // calls say_hello::<Vec<u8>>
```

This function takes a type parameter `W` that implements `Write` trait.

#### Multiple Type Parameters

```rust
fn top_ten<T: Debug + Hash + Eq>(values: &Vec<T>) { ... }

fn run_query<M, R>(data: &DataSet, map: M, reduce: R) -> Results
    where M: Mapper + Serialize,
          R: Reducer + Serialize
    { ... }

fn nearest<'t, 'c, P>(target: &'t P, candidates: &'c [P]) -> &'c P
    where P: MeasureDistance
    { ... }
```

## Defining and Implementing Traits

1. Traits can have default methods (same as Haskell)
2. Extension trait allows to add additional methods on other people's types
3. We can define subtraits just as `(Ord a => Eq a)` in Haskell
4.

```haskell
class  Eq a  where
  (==), (/=)            :: a -> a -> Bool
  x /= y                =  not (x == y)
```

```rust
trait Eq {
    fn eq(&self, right: &Self) -> Bool;
    fn notEq(&self, right: &Self) -> Bool {
        !self.eq(right)
    }
}
```

```Haskell
class Clone a where
    clone:: a -> a
```

```Rust
pub trait Clone {
    fn clone(&self) -> Self;
        ...
}
```

Don't use trait objects.

### Associated Types

```rust
pub trait Iterator {
    type Item;
    fn next(&mut self) -> Option<Self::Item>;
    ...
}

// (code from the std::env standard library module)
impl Iterator for Args {
    type Item = String;
    fn next(&mut self) -> Option<String> {
        ...
    }
    ...
}


fn dump<I>(iter: I)
    where I: Iterator<Item=String>
{
        ...
}

fn dump(iter: &mut Iterator<Item=String>) {
    for (index, s) in iter.enumerate() {
        println!("{}: {:?}", index, s);
    }
}
```

### Generic Traits

```rust
pub trait Mul<RHS=Self> {
    /// The resulting type after applying the `*` operator
    type Output;

    /// The method for the `*` operator
    fn mul(self, rhs: RHS) -> Self::Output;
}

```

The type parameter here means the same thing that it means on a struct or function: Mul is a generic trait, and its instances `Mul<f64>`, `Mul<String>`, `Mul<Size>`, etc. are all different traits, just as `min::<i32>` and `min::<String>` are different functions and `Vec<i32>` and `Vec<String>` are different types.

The syntax `RHS=Self` means that RHS defaults to Self. If I write `impl Mul` for Complex, without specifying Mul’s type parameter, it means impl `Mul<Complex>` for Complex. In a bound, if I write where `T: Mul`, it means where `T: Mul<T>`.
