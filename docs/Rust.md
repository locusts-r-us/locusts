# locusts

[![CI](https://github.com/locusts-r-us/locusts/actions/workflows/rust.yml/badge.svg)](https://github.com/locusts-r-us/locusts/actions/workflows/rust.yml)
[![Crates.io Version](https://img.shields.io/crates/v/locusts?logo=rust)](https://crates.io/crates/locusts)
[![docs.rs](https://img.shields.io/docsrs/locusts?logo=docsdotrs)](https://docs.rs/locusts)

## Description

locusts is a member of a [series of libraries](https://github.com/locusts-r-us/locusts) that allows you to introduce locusts into your codebase.

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

This project is licensed under the BSD Zero Clause License. See the [LICENSE](https://github.com/locusts-r-us/locusts/blob/master/LICENSE) file for details.
