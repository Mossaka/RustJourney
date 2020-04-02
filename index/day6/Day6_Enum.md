# Enums (Algebraic Data Types)

```rust
enum Json {
    Null,
    Boolean(bool),
    Number(f64),
    String(String),
    Array(Vec<Json>),
    Object(Box<HashMap<String, Json>>)
}
```

```rust
enum Option<T> { N
    one,
    Some(T)
}
enum Result<T, E> {
    Ok(T),
    Err(E)
}


// An ordered collection of `T`s.
enum BinaryTree<T> {
    Empty,
    NonEmpty(Box<TreeNode<T>>)
}
// A part of a BinaryTree.
struct TreeNode<T> {
    element: T,
    left: BinaryTree<T>,
    right: BinaryTree<T>
}
```

Basically, `Enum` behaves much like `data` in Haskell. Later we will introduce traits, which are essentially typeclasses in Haskell.
