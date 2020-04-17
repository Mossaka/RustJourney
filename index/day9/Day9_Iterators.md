# Iterators

Example:

- `1..n+1` is of type `Range<i32>`, which is an iterator that produces the integers from its start value to its end value (exclusive).
- `fold` method: `(1..n+1).fold(0, |sum, item| sum + item)`.

Terminology:

- an **iterator** is any type that implements Iterator, which defines an item and **next** method.
- an **iterable** is any type that implements IntoIterator: I can get an iterator over it by calling its **into_iter** method.
- an iterator produces values
- the values of an iterator produces are **items**
- The code that receives the items an iterator produces is the **consumer**

What's the difference between `iter` and `into_inter` methods?

- https://stackoverflow.com/a/34745885
- `iter` method is an ad-hoc implementation of iterator. Most collection types provide `iter` and `iter_mut` methods. The iterator's item is a borrowed reference to the elements in the collection.
- When a type implements `IntoIterator` trait, you can call its `into_iter` method. Most collections provide 3 implementations of `IntoIterator`, for shared reference, mut reference and moves:
  ```rust
  for element in &collection { ... }
  for element in &mut collection { ... }
  for element in collection { ... }
  ```

Why does Rust implement both?

- `IntoIterator` is for loops to work. But if I don't need to use loop, `favorites.iter()` is cleaner than `(&favorites).into_iter()`.
- `IntoIterator` allows generic programming

## Adapters

- map, filter
- filter_map, flat_map
- scan
- take, take_while
- skip, skip_while
- peekable
- fuse
- rev
- inspect
- chain
- enumerate
- zip
- by_ref
- cloned
- cycle

## Consuming

- count, sum, product
- max, min
- max_by, min_by
- max_by_key, min_by_key
- comparison
- and, all
- fold
- nth
- last
- find
- collect, FromIterator
  ```rust
  trait FromIterator<A>: Sized {
    fn from_iter<T: IntoIterator<Item=A>>(iter: T) -> Self;
  }
  ```
- extend
- partition
