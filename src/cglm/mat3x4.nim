import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat3x4_copy*(mat: Mat3x4; dest: var Mat3x4) {.cglm.}
## Copy all members of [mat] to [dest].
## param[in]  mat  source
## param[out] dest destination

proc glm_mat3x4_zero*(mat: var Mat3x4) {.cglm.}
## Make given matrix zero.
## param[in, out]  mat  matrix

proc glm_mat3x4_make*(src: ptr UncheckedArray[cfloat]; dest: var Mat3x4) {.cglm.}
## Create mat3x4 matrix from pointer.
## param[in]  src  pointer to an array of floats
## param[out] dest matrix

proc glm_mat3x4_mul*(m1: Mat3x4; m2: Mat4x3; dest: var Mat4) {.cglm.}
## Multiply m1 and m2 to dest.
## param[in]  m1   left matrix (mat3x4)
## param[in]  m2   right matrix (mat4x3)
## param[out] dest destination matrix (mat4)

proc glm_mat3x4_mulv*(m: Mat3x4; v: Vec3; dest: var Vec4) {.cglm.}
## Multiply matrix with column vector and store in dest column vector.
## param[in]  m    matrix (left)
## param[in]  v    vector (right, column vector)
## param[out] dest result vector

proc glm_mat3x4_transpose*(m: Mat3x4; dest: var Mat4x3) {.cglm.}
## Transpose matrix and store in dest.
## param[in]  m     matrix
## param[out] dest  result

proc glm_mat3x4_scale*(m: var Mat3x4; s: cfloat) {.cglm.}
## Scale (multiply with scalar) matrix.
## param[in, out] m matrix
## param[in]    s scalar