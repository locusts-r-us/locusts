# liboCusts

[![CI](https://github.com/locusts-r-us/locusts/actions/workflows/c.yml/badge.svg)](https://github.com/locusts-r-us/locusts/actions/workflows/c.yml)

## Description

liboCusts is a member of a [series of libraries](https://github.com/locusts-r-us/locusts) that allows you to introduce locusts into your codebase.

Why would you want to do that? I don't know.

## Example

```c
#include "locusts.h"

int main(void) {
 introduce_locusts();
 /* Locusts are now in your codebase! */
 return 0;
}
```

## Building

Multiple build systems are supported.

### Meson

```sh
meson setup builddir --buildtype=release
meson compile -C builddir
```

### CMake

```sh
cmake -S . -B build
cmake --build build
```

### Autoconf

```sh
autoreconf -fi
./configure
make
```

## License

This project is licensed under the BSD Zero Clause License. See the
[LICENSE](https://github.com/locusts-r-us/locusts/blob/master/LICENSE) file for details.
