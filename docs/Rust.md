# locusts

[![Rust](https://github.com/locusts-r-us/locusts/actions/workflows/rust.yml/badge.svg)](https://github.com/locusts-r-us/locusts/actions/workflows/rust.yml)
[![Crates.io Version](https://img.shields.io/crates/v/locusts)](https://crates.io/crates/locusts)


## Description

locusts is a library that provides a way to introduce locusts into your code.

Why would you want to do that? I don't know.

## Installation

Add this to your `Cargo.toml`:

```toml
[dependencies]
locusts = "1"
```

or run the following

```sh
cargo add locusts
```

## Example

```rust
use locusts;

fn main() {
 locusts::introduce_locusts();
 // Locusts are now in your codebase!
}
```

## License

This project is licensed under the BSD Zero Clause License. See the [LICENSE](../LICENSE) file for details.
