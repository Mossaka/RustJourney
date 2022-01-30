# Basic Types

## High-level Summary

- Compiler type: ahead-of-time compilation
- Rust is statically typed
- Rust can infer types given the types we spell out.
- Functions are generic

## Machine Type

| Size(bits)  | Unsignedinteger | Signedinteger | Floating-point |
| ----------- | --------------- | ------------- | -------------- |
| 8           | u8              | i8            |                |
| 16          | u16             | i16           |                |
| 32          | u32             | i32           | f32            |
| 64          | u64             | i64           | f64            |
| Machineword | usize           | isize         |                |

- Rust uses `u8` for byte values. Typically when reading data from a file or socket yields `u8` type.
- char type ≠ numeric type

### Integer

```rust
assert_eq!(2u16.pow(4), 16);
assert_eq!((-4i32).abs(), 4);
```

### Floating point

```rust
let _float_num = 31415.926e-4f64;
let _b = std::f64::INFINITY;
```

### Boolean
rust will require `if x!=0 {...}` not simply `if x {...}`.

```rust
assert_eq!(false as i64, 0);
assert_eq!(true as i64, 1);
```

### Characters

```rust

assert_eq!('*'.is_alphabetic(), false);
assert_eq!('β'.is_alphabetic(), true);
assert_eq!('8'.to_digit(10), Some(8));
assert_eq!('ಠ'.len_utf8(), 3);
assert_eq!(std::char::from_digit(2, 10), Some('2'));
```

### Tuple

```rust

let text = "I see the eigenvalue in thine eye";
let (head, tail) = text.split_at(21); // pattern-matching
assert_eq!(head, "I see the eigenvalue ");
assert_eq!(tail, "in thine eye");
```

I think of tuple type as a unnamed-product-type. Its product-type cousin to struct.

unit tuple: `()` has only one value in Rust: `()`. When we don't have a return type in a function, we meant we have a unit type `()`.

### Pointer Type

#### references

`&T` It borrows an immutable reference to T.
`&mut T` It borrows a mutable reference to T.

Unlike C, references are never null. Rust compiler tracks the ownership and lifetimes of values -> no dangling pointers, double frees, and pointer invalidation

#### boxes

`Box::new(T)` will allocate a value in the heap.

#### unsafe pointers

raw pointer types `*mut T` and `*const T`. Don't use them. If needed, use them in `unsafe` blocks.

### Array, Vectors and Slices

- the type `[T;N]` represents a N-elem array with type T. The array size is fixed
- the type `Vec<T>` is dynamically allocated array. Its elements live on the heap.
- The types `&[T]` and `&mut [T]`, called a shared slice of Ts and mutable slice of Ts, are references to a series of elements that are a part of some other value, like an array or vector.
- `v.len()`, `v[i]`.
- `let mut sieve = [true; 10000];` can create a 10000 array with default value.

```rust
let mut v = vec![2, 3, 5, 7];
assert_eq!(v.iter().fold(1, |a, b| a * b), 210);
```

Useful methods, like iterating over elements, searching, sorting, filling, filtering and so on are all provided on slices, not on arrays. But Rust implicitly converts a reference to an array to a slice when searching for methods. 

- `vec!` macro is equivalent to `Vec::new()` and push elements into it.
- `let v: Vec<i32> = (0..5).collect();` vector produced by iterator.
- `Vec::with_capacity` can allocate large enough buffer.
- Note that capacity is different from len

```rust
let mut v = Vec::with_capacity(2);
assert_eq!(v.len(), 0);
assert_eq!(v.capacity(), 2);
```

#### Slices

Slice is written `[T]` is a reference to a region of an array.

```rust
let v: Vec<f64> = vec![0.0, 0.707, 1.0, 0.707];
let a: [f64; 4] = [0.0, -0.707, -1.0, -0.707];
let sv: &[f64] = &v;
let sa: &[f64] = &a;
```

Since slice is a reference to either array or vector, it makes it a good choice for functions which want to opearte on honogeneous data series. Then we can apply it to either a vector or an array.

### String Type

#### String Literals

String Literals are enclosed in double quotes.<br>
`let default_win_install_path = r"C:\Program Files\Gorillas";` is a raw string. We don't have escape characters in raw string.

- We can think of strings as `Vec<u8>` to hold UTF-8.
- A `&str`, called string slice, is a reference to a run of UTF-8 text owner by someone else.
- It's impossible to modify a `&str`.
- It's better to use `&str` in the argument of a function.

#### What are the difference between String, &str, string literal?

```rust
let noodles = "noodles".to_string(); //String
let oodles = &noodles[1..]; //&str
let poodles = "ಠ_ಠ"; // string literal
```

A String owners a string buffer in the heap. We can think of String as `Vec<u8>` holding UTF-8. Its a fat pointer, containing address to heap, capacity and length. A String is analogous to `Vec<T>`<br>
A `&str` is a reference (nonowning pointer) to UTF-8 text in heap. It's a fat pointer, containing the address and the the length.
A string literal is a `&str` that refers to a preallocated text in read-only memory.

### More Types

- structs
- enums
- traits
- functions and closures
- standard collection types
