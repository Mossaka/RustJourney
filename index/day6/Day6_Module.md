# Modules

If we write this on top of a file `mod spores;`. Rust is checking for both `spores.rs` and `spores/mod.rs`. It means that we can either create a file named `spores` in the same directive, or create it as a directive with `mod.rs` inside.

In `mod.rs` we can refer to other mods in the same directive as usual. For example:

```rust
// in plant_structures/mod.rs
pub mod roots;
pub mod stems;
pub mod leaves;
```

### Import

```rust
use std::collections::{HashMap, HashSet}; // import both
use std::io::prelude::*; // import everything
use super::AminoAcid; // explicitly import from parent
use self::synthesis::synthesize; // self is a syntax for current module.
```

**_Remark_**: Submodules can access **private items** in their parent modules, but they have to **import** each one by name. use `super::*;` only imports items that are marked `pub`.

### How to turn a problem into a library?

1. Rename the file `src/main.rs` to `src/lib.rs`.
2. Add the pub keyword to items in src/lib.rs that will be public features of our library.
3. Move the main function to a `src/bin/<file>`. Import your library.
4. **Or**, we move the main function to a seperate project. In that project's `Cargo.toml` file, we list the library as a dependency.

```rust
[dependencies]
fern_sim = { path = "../fern_sim" }
```

The code in `src/lib.rs` forms the root module of the library. Other crates that use our library can only access the public items of this root module.

Both the library and the command-line program live in the same source repository.

### Testing

```rust
#[cfg(test)] // include this module only when testing
mod tests {
    fn roughly_equal(a: f64, b: f64) -> bool {
        (a - b).abs() < 1e-6
    }
    #[test]
    fn trig_works() {
        use std::f64::consts::PI;
        assert!(roughly_equal(PI.sin(), 0.0));
    }
}
```

I can run `cargo doc --no-deps --open` for creating a documentation.

Documentation comments start with `///`. I can use `//!` for commenting the `mod`. The documentation created is a Markdown file. An interesting thing happens when including a block of code in a doc comment. Rust automatically turns it into a test.

```rust
use std::ops::Range;
/// Return true if two ranges overlap.
///
///     assert_eq!(ranges::overlap(0..7, 3..10), true);
///     assert_eq!(ranges::overlap(1..5, 101..105), false);
///
/// If either range is empty, they don't count as overlapping.
///
///     assert_eq!(ranges::overlap(0..0, 0..10), false);
///
pub fn overlap(r1: Range<usize>, r2: Range<usize>) -> bool {
    r1.start < r1.end && r2.start < r2.end && r1.start < r2.end && r2.start < r1.end
}

```

### Dependencies

```rust
image = "0.6.1"
image = { git = "https://github.com/Piston/image.git", rev = "528f19c" }
image = { path = "vendor/image" }
```
