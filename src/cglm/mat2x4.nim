import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat2x4_copy*(mat: Mat2x4; dest: var Mat2x4) {.cglm.}
## copy all members of [mat] to [dest]
## param[in]  mat  source
## param[out] dest destination

proc glm_mat2x4_zero*(mat: var Mat2x4) {.cglm.}
## make given matrix zero.
## param[in, out]  mat  matrix

proc glm_mat2x4_make*(src: ptr UncheckedArray[cfloat]; dest: var Mat2x4) {.cglm.}
## Create mat2x4 matrix from pointer
## param[in]  src  pointer to an array of floats
## param[out] dest matrix

proc glm_mat2x4_mul*(m1: Mat2x4; m2: Mat4x2; dest: var Mat4) {.cglm.}
## multiply m1 and m2 to dest
## param[in]  m1   left matrix (mat2x4)
## param[in]  m2   right matrix (mat4x2)
## param[out] dest destination matrix (mat4)

proc glm_mat2x4_mulv*(m: Mat2x4; v: Vec2; dest: var Vec4) {.cglm.}
## multiply matrix with column vector and store in dest column vector
## param[in]  m    matrix (left)
## param[in]  v    vector (right, column vector)
## param[out] dest result vector

proc glm_mat2x4_transpose*(m: Mat2x4; dest: var Mat4x2) {.cglm.}
## transpose matrix and store in dest
## param[in]  m     matrix
## param[out] dest  result

proc glm_mat2x4_scale*(m: var Mat2x4; s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix
## param[in, out] m matrix
## param[in]    s scalar