import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat3_copy*(mat: Mat3; dest: var Mat3) {.cglm.}
## copy all members of [mat] to [dest]
## param[in]  mat  source
## param[out] dest destination

proc glm_mat3_identity*(mat: var Mat3) {.cglm.}
## make given matrix identity. It is identical with below,
## but it is more easy to do that with this func especially for members
## e.g. glm_mat3_identity(aStruct->aMatrix);
##
## @code
## glm_mat3_copy(GLM_MAT3_IDENTITY, mat); // C only
##
## // or
## mat3 mat = GLM_MAT3_IDENTITY_INIT;
## @endcode
##
## @param[in, out]  mat  destination
## @param[out] dest destination

proc glm_mat3_identity_array*(mat: ptr UncheckedArray[Mat3]; count: csize_t) {.cglm.}
## make given matrix array's each element identity matrix
##
## @param[in, out]  mat   matrix array (must be aligned (16/32)
##                        if alignment is not disabled)
## @param[in]       count count of matrices

proc glm_mat3_zero*(mat: var Mat3) {.cglm.}
## make given matrix zero.
## @param[in, out]  mat  matrix

proc glm_mat3_mul*(m1: Mat3; m2: Mat3; dest: var Mat3) {.cglm.}
## multiply m1 and m2 to dest
## m1, m2 and dest matrices can be same matrix, it is possible to write this:
## mat3 m = GLM_MAT3_IDENTITY_INIT;
## glm_mat3_mul(m, m, m);
## param[in]  m1   left matrix
## param[in]  m2   right matrix
## param[out] dest destination matrix

proc glm_mat3_transpose_to*(m: Mat3; dest: var Mat3) {.cglm.}
## transpose mat3 and store in dest
##
## source matrix will not be transposed unless dest is m
##
## @param[in]  m     matrix
## @param[out] dest  result

proc glm_mat3_transpose*(m: var Mat3) {.cglm.}
## transpose mat3 and store result in same matrix
## @param[in, out] m source and dest

proc glm_mat3_mulv*(m: Mat3; v: Vec3; dest: var Vec3) {.cglm.}
## multiply mat3 with vec3 (column vector) and store in dest vector
##
## @param[in]  m    mat3 (left)
## @param[in]  v    vec3 (right, column vector)
## @param[out] dest vec3 (result, column vector)

proc glm_mat3_trace*(m: Mat3): cfloat {.cglm.}
## sum of the elements on the main diagonal from upper left to the lower right
## @param[in]  m matrix

proc glm_mat3_quat*(m: Mat3; dest: var Versor) {.cglm.}
## convert mat3 to quaternion
## @param[in]  m    rotation matrix
## @param[out] dest destination quaternion

proc glm_mat3_scale*(m: var Mat3; s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix
## @param[in, out] m matrix
## @param[in]      s scalar

proc glm_mat3_det*(mat: Mat3): cfloat {.cglm.}
## mat3 determinant
## @param[in] mat matrix
## @return determinant

proc glm_mat3_inv*(mat: Mat3; dest: var Mat3) {.cglm.}
## inverse mat3 and store in dest
##
## @param[in]  mat  matrix
## @param[out] dest inverse matrix

proc glm_mat3_swap_col*(mat: var Mat3; col1, col2: cint) {.cglm.}
## swap two matrix columns
##
## @param[in,out] mat  matrix
## @param[in]     col1 col1
## @param[in]     col2 col2

proc glm_mat3_swap_row*(mat: var Mat3; row1, row2: cint) {.cglm.}
## swap two matrix rows
##
## @param[in,out] mat  matrix
## @param[in]     row1 row1
## @param[in]     row2 row2

proc glm_mat3_rmc*(r: Vec3; m: Mat3; c: Vec3): cfloat {.cglm.}
## helper for  R (row vector) * M (matrix) * C (column vector)
## rmc stands for Row * Matrix * Column
## the result is scalar because R * M = Matrix1x3 (row vector),
## then Matrix1x3 * Vec3 (column vector) = Matrix1x1 (Scalar)
##
## @param[in]  r   row vector or matrix1x3
## @param[in]  m   matrix3x3
## @param[in]  c   column vector or matrix3x1
##
## @return scalar value e.g. Matrix1x1

proc glm_mat3_make*(src: ptr UncheckedArray[cfloat]; dest: var Mat3) {.cglm.}
## Create mat3 matrix from pointer
## @param[in]  src  pointer to an array of floats
## @param[out] dest matrix