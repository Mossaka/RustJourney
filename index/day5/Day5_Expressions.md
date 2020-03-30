# Expressions

Expressions have values, statements don't.
Rust is an expression language.

### Blocks and Semicolons

The value of the block is the value of the last expression. Hence we can't write a semicolon to the last line in the block. A expression followed by semicolon simply means that the whole thing is a command that changes a state and returns `()`. Hence if the block's return type is `void`, we must have the last expression in the block to end with a semicolon.

### Matching

```rust
match code {
0 => println!("OK"),
1 => println!("Wires Tangled"),
2 => println!("User Asleep"),
_ => println!("Unrecognized Error {}", code)
}
```

general form:

```rust
match value {
    pattern => expr,
    ...
}
```

### Loops

The value of the loop is `()` with type `void`.

```rust
while condition {
    block
}
while let pattern = expr {
    block
}
loop {
    block
}
for pattern in collection {
    block
}
```

```rust
for rs in &mut strings { // the type of rs is &mut String
    rs.push('\n'); // add a newline to each string
}
```

#### Loops with lifetime:

```rust
'search:
for room in apartment {
    for spot in room.hiding_spots() {
        if spot.contains(keys) {
            println!("Your keys are {} in the {}.", spot, room);
            break 'search;
        }
    }
}
```

### Functions and Method Calls

Non-static functions are called on values: `my_vec.len()`. <br>
Static functions are called on types: `Vec::new()` <br>
Methods can be chained: `Iron::new(router).http("localhost:3000").unwrap();` <br>

Note: in function call, we need to use **turbofish** `::<T>` to indicate generic type. For example:

```rust
return Vec::<i32>::with_capacity(1000); // ok, using ::<
let ramp = (0 .. n).collect::<Vec<i32>>(); // ok, using ::<
```

### Fileds and Elements

```rust
game.black_pawns // struct field
coords.1 // tuple element
pieces[i] // array element
```

the (half-open) range operator: `..` have 4 different usages:

```rust
.. // RangeFull
a .. // RangeFrom { start: a }
..b //RangeTo{end:b}
a..b //Range{start:a,end:b}
```

### Type Casts

Rust uses the `as` keyword.

```rust
let x = 17; // x is type i32
let index = x as usize; // convert to usize
```

**deref coercions** will make smart pointer types that behave much like the underlying values.

- Values of type `&String` auto-convert to type `&str` without a cast.
- Values of type `&Vec<i32>` auto-convert to `&[i32]`.
- Values of type `&Box<Chessboard>` auto-convert to `&Chessboard`.

### Closures

```rust
let is_even = |x| x % 2 == 0;
```

Rust can infer the parameter and return type of closure. But if I specify the return type, then the body of the closure must be a **block**.

```rust
let is_even=|x:u64| -> bool x % 2 == 0; //error
let is_even=|x:u64| -> bool { x % 2 == 0 }; //ok
```
