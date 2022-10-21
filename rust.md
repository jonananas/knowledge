# Rust

## Memory safety (memory, threads, no dangle, ..)

- Programming in a Safe block means compile time check of memory safety
- Unsafe blocks requires manual code review.
The overall opinion is that Rust is better than C++ in this regard.

## Package manager support

- [Cargo](https://doc.rust-lang.org/cargo/) is the standard dependency handling tool
- [crates.io](https://crates.io) is the standard binary repository for Rust
- Cargo and crates.io removes all the hassle of dependencies and distributing binaries that C++ have a lot of problems with.

## Library support

Rust has strong library support, but not as extensive as C++. Checking which libraries are available is easy in crates.io, and we could not think of one that was not available in both Rust and C++. We do not think we would end up in a situation where we’d miss a library, but it is possible.

## Interesting high-level articles

- [Why rust](https://www.rerun.io/blog/why-rust)
  - What's to like about rust
  - More on Library support and other problems with Rust
- [Rewriting a high performance vector database in Rust](https://www.pinecone.io/learn/rust-rewrite/)
