import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat2_copy*(mat: Mat2; dest: var Mat2) {.cglm.}
## copy all members of [mat] to [dest]
## param[in]  mat  source
## param[out] dest destination

proc glm_mat2_identity*(mat: var Mat2) {.cglm.}
## make given matrix identity. It is identical with below,
##        but it is more easy to do that with this func especially for members
##        e.g. glm_mat2_identity(aStruct->aMatrix);
##
## @code
## glm_mat2_copy(GLM_MAT2_IDENTITY, mat); // C only
##
## // or
## mat2 mat = GLM_MAT2_IDENTITY_INIT;
## @endcode
##
## @param[in, out]  mat  destination

proc glm_mat2_identity_array*(mat: ptr UncheckedArray[Mat2]; count: csize_t) {.cglm.}
## make given matrix array's each element identity matrix
## param[in, out]  mat   matrix array (must be aligned (16)
##                        if alignment is not disabled)
##
## @param[in]       count count of matrices

proc glm_mat2_zero*(mat: var Mat2) {.cglm.}
## make given matrix zero.
## param[in, out]  mat  matrix

proc glm_mat2_mul*(m1: Mat2; m2: Mat2; dest: var Mat2) {.cglm.}
## multiply m1 and m2 to dest
## param[in]  m1   left matrix
## param[in]  m2   right matrix
## param[out] dest destination matrix

proc glm_mat2_transpose_to*(m: Mat2; dest: var Mat2) {.cglm.}
## transpose mat2 and store in dest
## source matrix will not be transposed unless dest is m
## param[in]  m     matrix
## param[out] dest  result

proc glm_mat2_transpose*(m: var Mat2) {.cglm.}
## transpose mat2 and store result in same matrix
## param[in, out] m source and dest

proc glm_mat2_mulv*(m: Mat2; v: Vec2; dest: var Vec2) {.cglm.}
## multiply mat2 with vec2 (column vector) and store in dest vector
## param[in]  m    mat2 (left)
## param[in]  v    vec2 (right, column vector)
## param[out] dest vec2 (result, column vector)

proc glm_mat2_trace*(m: Mat2): cfloat {.cglm.}
## trace of matrix
## sum of the elements on the main diagonal from upper left to the lower right
## param[in]  m matrix

proc glm_mat2_scale*(m: var Mat2; s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix
## param[in, out] m matrix
## param[in]      s scalar

proc glm_mat2_det*(mat: Mat2): cfloat {.cglm.}
## mat2 determinant
## param[in]  mat matrix
## @return determinant

proc glm_mat2_inv*(mat: Mat2; dest: var Mat2) {.cglm.}
## inverse mat2 and store in dest
## param[in]  mat  matrix
## param[out] dest inverse matrix

proc glm_mat2_swap_col*(mat: var Mat2; col1: cint; col2: cint) {.cglm.}
## swap two matrix columns
## param[in,out] mat  matrix
## param[in]     col1 col1
## param[in]     col2 col2

proc glm_mat2_swap_row*(mat: var Mat2; row1: cint; row2: cint) {.cglm.}
## swap two matrix rows
## param[in,out] mat  matrix
## param[in]     row1 row1
## param[in]     row2 row2

proc glm_mat2_rmc*(r: Vec2; m: Mat2; c: Vec2): cfloat {.cglm.}
## helper for  R (row vector) * M (matrix) * C (column vector)
## rmc stands for Row * Matrix * Column
##
## the result is scalar because R * M = Matrix1x2 (row vector),
## then Matrix1x2 * Vec2 (column vector) = Matrix1x1 (Scalar)
##
## @param[in]  r   row vector or matrix1x2
## @param[in]  m   matrix2x2
## @param[in]  c   column vector or matrix2x1
##
## @return scalar value e.g. Matrix1x1

proc glm_mat2_make*(src: ptr UncheckedArray[cfloat]; dest: var Mat2) {.cglm.}
## Create mat2 matrix from pointer
## param[in]  src  pointer to an array of floats
## param[out] dest matrix