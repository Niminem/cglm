import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat3x2_copy*(mat: Mat3x2; dest: var Mat3x2) {.cglm.}
## copy all members of [mat] to [dest]
## param[in]  mat  source
## param[out] dest destination

proc glm_mat3x2_zero*(mat: var Mat3x2) {.cglm.}
## make given matrix zero
## param[in, out]  mat  matrix

proc glm_mat3x2_make*(src: ptr UncheckedArray[cfloat]; dest: var Mat3x2) {.cglm.}
## Create mat3x2 matrix from pointer
## param[in]  src  pointer to an array of floats
## param[out] dest matrix

proc glm_mat3x2_mul*(m1: Mat3x2; m2: Mat2x3; dest: var Mat2) {.cglm.}
## multiply m1 and m2 to dest
## param[in]  m1   left matrix (mat3x2)
## param[in]  m2   right matrix (mat2x3)
## param[out] dest destination matrix (mat2)

proc glm_mat3x2_mulv*(m: Mat3x2; v: Vec3; dest: var Vec2) {.cglm.}
## multiply matrix with column vector and store in dest column vector
## param[in]  m    matrix (left)
## param[in]  v    vector (right, column vector)
## param[out] dest result vector

proc glm_mat3x2_transpose*(m: Mat3x2; dest: var Mat2x3) {.cglm.}
## transpose matrix and store in dest
## param[in]  m     matrix
## param[out] dest  result

proc glm_mat3x2_scale*(m: var Mat3x2; s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix
## param[in, out] m matrix
## param[in]    s scalar