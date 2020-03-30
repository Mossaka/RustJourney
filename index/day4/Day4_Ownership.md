# Ownership

C++: keeps the ownership of all the memory clear, at the espense of making assignment carry out a deep copy of the object.<br>
Python: makes assignment easy, at the espense of requiring reference counts (hence garbage collection).<br>
Rust: makes assignment easy, but like C++ it keeps the ownership clear and hence do not need garbage collection.<br>

```rust

let s = vec!["udon".to_string(), "ramen".to_string(), "soba".to_string()];
let t = s;
let u = s;
```

The above code will result in a compiler-time error, since the assignment `let t = s` moves the ownership of `s` to `t`. Thus `s` is uninitilized. If we want deep copy just like C++, we need to do something like this:

```rust

let s = vec!["udon".to_string(), "ramen".to_string(), "soba".to_string()];
let t = s.clone();
let u = s.clone();
```

We could also do Python's reference count behaviour using `Rc and Arc`, which enable shared ownership.

Rust will apply move sementics to almost any use of value:

- Passing arguments to functions moves ownership to the function’s parameters;
- returning a value from a function moves ownership to the caller.

## More Examples of Moves

```rust

let x = vec![10, 20, 30];
if c {
    f(x); // ... ok to move from x here
} else {
    g(x); // ... and ok to also move from x here
}
h(x) // bad: x is uninitialized here if either path uses it

```

```rust
let x = vec![10, 20, 30];
while f() {
    g(x); // bad: x would be moved in first iteration,
    // uninitialized in second
}
```

```rust

// Build a vector of the strings "101", "102", ... "105"
let mut v = Vec::new();
for i in 101 .. 106 {
    v.push(i.to_string());
}
// Pull out random elements from the vector.
let third = v[2];
let fifth = v[4];
```

Rust will reject the above code since Rust could not keep track of the `v[2]` and `v[4]` being dropped. The correct way to do it is to use `&v[2]`. But if you really want to drop one element form `vec`, you can do this:

```rust
// Build a vector of the strings "101", "102", ... "105"
let mut v = Vec::new();
for i in 101 .. 106 {
    v.push(i.to_string());
}
// 1. Pop a value off the end of the vector:
let fifth = v.pop().unwrap();
assert_eq!(fifth, "105");
// 2. Move a value out of the middle of the vector, and move the last // element into its spot:
let second = v.swap_remove(1);
assert_eq!(second, "102");
// 3. Swap in another value for the one we're taking out:
let third = std::mem::replace(&mut v[2], "substitute".to_string());
assert_eq!(third, "103");
// Let's see what's left of our vector.
assert_eq!(v, vec!["101", "104", "substitute"]);
```

```rust
let v = vec!["liberté".to_string(), "égalité".to_string(),"fraternité".to_string()];
for mut s in v {
    s.push('!'); println!("{}", s);
}
```

when we pass `v` to the loop directly, this moves vector out of `v` and stores in the loop internal variable. Then the loop will assign move each element to `s`. After the loop line, `v` is uninitialized.

```rust
let first_name = composers[0].name.take();
```

`take()` will replace `name` with `None` and then move that value to `first_name`.

## Copy Types

In Rust, most values are moved. But there is an exception called Copy Types. Assigning a value of a Copy Type **copies** the value, rather than moving it. Passing Copy types to function constructors behaves similarly. What do Copy Type includes:

- machine integers, floating-point numbers
- char
- bool
- a tuple or fixed-size array of Copy types

by default, `struct` and `enum` types are not Copy types.
If our struct contains only Copy types, we can define them to be copy type as well by adding this attribute:

```rust
#[derive(Copy, Clone)]
struct Label { number: u32 }
```

## Rc (ref count) and Arc (atomic ref count): Shared Ownership

```rust
use std::rc::Rc;
// Rust can infer all these types; written out for clarity
let s: Rc<String> = Rc::new("shirataki".to_string());
let t: Rc<String> = s.clone();
let u: Rc<String> = s.clone();
```

This behaves essentially like Python - `t` and `u` won't copy the values in the heap. Rather they will point to the same buffer where s points to. Rust won't drop the string until the last `Rc` drops.
