# References

1. **Ownership** are owning pointers. when the onwer drops, the reference goes with it.
2. **References**, which are nonowning pointers, have no effect on their references' lifetimes. In fact , they can never outlive the owners. Hence we say they are _borrowing_ references from owners.

1) by value: when we pass a value to a function that moves the onwership of that value
2) by reference: we pass the value as a reference to a function.

```rust

struct Anime { name: &'static str, bechdel_pass: bool };
let aria = Anime { name: "Aria: The Animation", bechdel_pass: true };
let anime_ref = &aria;
assert_eq!(anime_ref.name, "Aria: The Animation");
// Equivalent to the above, but with the dereference written out:
assert_eq!((*anime_ref).name, "Aria: The Animation");
```

```rust
let mut v = vec![1973, 1968];
v.sort(); // implicitly borrows a mutable reference to v
(&mut v).sort(); // equivalent; much uglier
```

Note that `&mut` is an exclusive reference and `mut var` is a mutable binding of a variable. See the following example: <br>

```rust
let i = &mut 0;
*i = 1;
//i = 2; // however this wouldn't be allowed
```

### Chain of references

```rust

struct Point { x: i32, y: i32 }
let point = Point { x: 1000, y: 729 }; let r: &Point = &point;
let rr: &&Point = &r;
let rrr: &&&Point = &rr;

assert_eq!(rrr.y, 729);
```

### Comparing references

```rust
let x = 10;
let y = 10;
let rx = &x;
let ry = &y;
let rrx = &rx;
let rry = &ry;
assert!(rrx <= rry); assert!(rrx == rry);
```

we can always use `std::ptr::eq` to compare the actually pointer addresses. Otherwise, Rust always goes down the chain of reference to find the value.

At the machine level, Rust represents `None` as a null pointer, and `Some(r)`, where r is a &T value, as the nonzero address. So Rust is type safe.

### Borrowing Scope

```rust

{
    let r;
    {
        let x = 1;
        r = &x;
    }
    assert_eq!(*r, 1); // bad: reads memory `x` used to occupy
}

```

### Receiving Reference as Parameter

```rust
static mut STASH: &i32 = &128;
fn f(p: &i32) { // still not good enough
    unsafe {
        STASH = p;
    }
}
```

The above function signiture is actually this:

```rust
fn f<'a>(p: &'a i32) { ... }
```

`'a` is the **lifetime** (tick) parameter of function f. Rust defines it to be the smallest possible lifetime that allows `p` to do anything. Hence its lifetime is the lifetime of the function f.
now we understand why the above code does not work since STASH's lifetime is out of scope of `'a`.

We want really mean by lifetime is that any parameter passed to `f` must live as least as long as `'a`.

How can we write explicit lifetime?

```rust
fn static_ref(){
    let s: &'static str = "hello";
}
```

String literals are special. They live for the lifetime of the entire program.
We use the special lifetime name `'static` to refer to this lifetime.

### Distinct Lifetime Parameters

Suppose we have the following code:

```rust
struct S<'a> {
    x: &'a i32,
    y: &'a i32
}

let x = 10;
let r;
{
    let y = 20;
    {
        let s = S { x: &x, y: &y };
        r = s.x;
    }
}

```

What's the problem? There is a problem because we are using the same lifetime parameter `'a` for `x` and `y`. Hence Rust will infer that a single lifetime works both for `x` and `y` is inside the outer scope. (Taking `min` operation on both `x` and `y`'s lifetimes).

How can we solve it?

```rust
struct S<'a, 'b> {
    x: &'a i32,
    y: &'b i32
}
```

We can use distinct lifetime parameters so that `x` and `y` are now independent.

### Omitting Lifetime Parameters

If function does not return any references:

- I never need to write out the lifetime parameters.

If function does return references:

- If it has only **1** parameter, no need to write lifetime parameter
- If function has `&self` as argument, then return reference's lifetime is the same as `&self`'s lifetime.

```rust
fn find_by_prefix<'a, 'b>(&'a self, prefix: &'b str) -> Option<&'a String>
```

is the same as:

```rust
fn find_by_prefix(&self, prefix: &str) -> Option<&String>
```
