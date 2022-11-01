# Rust

## Questions

- How do we use a private repo instead of crates.io?
- Can GitLab be used as private repo?
- Traits?

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

## Installing

Install rustup: <https://www.rust-lang.org/tools/install>
Install vscode extension rust-analyzer - rust-lang.rust-analyzer

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

Welcome to Rust!

This will download and install the official compiler for the Rust
programming language, and its package manager, Cargo.

Rustup metadata and toolchains will be installed into the Rustup
home directory, located at:

  /Users/jonas/.rustup

This can be modified with the RUSTUP_HOME environment variable.

The Cargo home directory is located at:

  /Users/jonas/.cargo

This can be modified with the CARGO_HOME environment variable.

The cargo, rustc, rustup and other commands will be added to
Cargo's bin directory, located at:

  /Users/jonas/.cargo/bin

This path will then be added to your PATH environment variable by
modifying the profile files located at:

  /Users/jonas/.profile
  /Users/jonas/.zshenv

You can uninstall at any time with rustup self uninstall and
these changes will be reverted.
```

## Cargo

```bash
cargo doc --open # Open dependency documentation in browser
```

## Rust Language

- Matching
- Shadowing
- Destructuring
- No Inheritance
