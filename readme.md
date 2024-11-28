# Emt-LinearMath

**Emt-Linearmath** is a lightweight library designed for performing basic vector operations and matrix computations efficiently.

## supported compilers 

| compiler | available         | tools                             | platform |
|----------|-------------------|-----------------------------------|-----------|
| clang    | :heavy_check_mark:| Compatible with `LLVM or MSYS`    | window   |
| msvc     | :heavy_check_mark:| Fully integrated                  | window   |

## Features
- Perform **basic vector operations** (addition, subtraction, dot product, etc.).
- Handle **matrix computations** (multiplication, transposition, inversion, etc.).
- Lightweight and easy to integrate into your projects.

### usage example

```c
#include "linermath/linermath.h

mat4x4 projection = mat4x4::perspective_lh(45.f, <ratio>, 0.01f, 100.f);

```

