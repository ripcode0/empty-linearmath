### Supported Compilers 

| compiler | available         | tools                             | platform |
|----------|-------------------|-----------------------------------|-----------|
| clang    | :heavy_check_mark:| Compatible with `LLVM or MSYS`    | window   |
| msvc     | :heavy_check_mark:| Fully integrated                  | window   |

### Usage Example

```c
#include "linermath/linermath.h

mat4x4 projection = mat4x4::perspective_lh(45.f, <ratio>, 0.01f, 100.f);

```

