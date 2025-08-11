# cglm

Nim wrapper for `cglm`, an optimized 3D math library written in C99 (based on the c++ library glm).

Repo: https://github.com/recp/cglm

Docs: https://cglm.readthedocs.io/en/latest/index.html

Current version: v0.9.6

In this `cglm` wrapper we use the [Array API](https://cglm.readthedocs.io/en/latest/api_inline_array.html)

> **NOTE**: This is a rather verbose and ugly API IMO. However, it is feature complete and we can create high-level Nim wrapper from this base easily. The [Struct API](https://cglm.readthedocs.io/en/latest/api_struct.html) is along the lines of what we want to accomplish for a more Nim-like wrapper. I will build on top of this as I have the time, otherwise PRs are welcomed.

## Installation

`git clone https://github.com/Niminem/cglm`

or, when available on [Nimble](https://github.com/nim-lang/packages/pull/3102):

`nimble install cglm`

## Misc.

1. `applesimd.h` was not wrapped. This header just provides helpers to convert cglm's types to apple's simd library
to make it easy to use cglm with Apple's Metal / MetalGL api.
2. To allow `clgm` to use SIMD instructions like **SSE2** or **NEON**, simply enable the instruction set via compiler flag like:

```nim
{.passC: "-msse2".} ## for x86-64 platforms
```