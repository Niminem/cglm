import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat4_ucopy*(mat: Mat4, dest: var Mat4) {.cglm.}
## copy all members of [mat] to [dest]
## matrix may not be aligned, u stands for unaligned, this may be useful when
## copying a matrix from external source e.g. asset importer...
## param[in]  mat  source
## param[out] dest destination

proc glm_mat4_copy*(mat: Mat4, dest: var Mat4) {.cglm.}
## copy all members of [mat] to [dest]
## param[in]  mat  source
## param[out] dest destination

proc glm_mat4_identity*(mat: var Mat4) {.cglm.}
## make given matrix identity. It is identical with below,
## but it is more easy to do that with this func especially for members
## e.g. glm_mat4_identity(aStruct->aMatrix);
## param[in, out]  mat  destination

proc glm_mat4_identity_array*(mat: ptr UncheckedArray[Mat4], count: csize_t) {.cglm.}
## make given matrix array's each element identity matrix
## param[in, out]  mat   matrix array (must be aligned (16/32)
##                        if alignment is not disabled)
## param[in]       count count of matrices

proc glm_mat4_zero*(mat: var Mat4) {.cglm.}
## make given matrix zero
## param[in, out]  mat  matrix

proc glm_mat4_pick3*(mat: Mat4, dest: var Mat3) {.cglm.}
## copy upper-left of mat4 to mat3
## param[in]  mat  source
## param[out] dest destination

proc glm_mat4_pick3t*(mat: Mat4, dest: var Mat3) {.cglm.}
## copy upper-left of mat4 to mat3 (transposed)
## the postfix t stands for transpose
## param[in]  mat  source
## param[out] dest destination

proc glm_mat4_ins3*(mat: Mat3, dest: var Mat4) {.cglm.}
## copy mat3 to mat4's upper-left
## param[in]  mat  source
## param[out] dest destination

proc glm_mat4_mul*(m1: Mat4, m2: Mat4, dest: var Mat4) {.cglm.}
## multiply m1 and m2 to dest
## m1, m2 and dest matrices can be same matrix, it is possible to write this:
## @code
## mat4 m = GLM_MAT4_IDENTITY_INIT;
## glm_mat4_mul(m, m, m);
## @endcode
## param[in]  m1   left matrix
## param[in]  m2   right matrix
## param[out] dest destination matrix

proc glm_mat4_mulN*(matrices: ptr UncheckedArray[Mat4], len: uint32, dest: var Mat4) {.cglm.}
## multiply N mat4 matrices and store result in dest
## this function lets you multiply multiple (more than two or more...) matrices
## multiplication will be done in loop, this may reduce instructions
## size but if <b>len</b> is too small then compiler may unroll whole loop,
## usage:
## @code
## mat m1, m2, m3, m4, res;
##
## glm_mat4_mulN((mat4 *[]){&m1, &m2, &m3, &m4}, 4, res);
## @endcode
##
## @warning matrices parameter is pointer array not mat4 array!
##
## @param[in]  matrices mat4 * array
## @param[in]  len      matrices count
## @param[out] dest     result

proc glm_mat4_mulv*(m: Mat4, v: Vec4, dest: var Vec4) {.cglm.}
## multiply mat4 with vec4 (column vector) and store in dest vector
## param[in]  m    mat4 (left)
## param[in]  v    vec4 (right, column vector)
## param[out] dest vec4 (result, column vector)

proc glm_mat4_trace4*(m: Mat4): cfloat {.cglm.}
## trace of matrix
## sum of the elements on the main diagonal from upper left to the lower right
## param[in]  m matrix
## return     trace

proc glm_mat4_trace3*(m: Mat4): cfloat {.cglm.}
## trace of matrix (rotation part)
## sum of the elements on the main diagonal from upper left to the lower right
## param[in]  m matrix

proc glm_mat4_quat*(m: Mat4, dest: var Vec4) {.cglm.}
## convert mat4's rotation part to quaternion
## param[in]  m    affine matrix
## param[out] dest destination quaternion

proc glm_mat4_mulv3*(m: Mat4, v: Vec3, last: cfloat, dest: var Vec3) {.cglm.}
## multiply vector with mat4
## actually, the result is vec4, after multiplication the last component
## is trimmed. if you need it don't use this func.
## param[in] m mat4(affine transform)
## param[in] v vec3
## param[in] last 4th item to make it vec4
## param[out] dest result vector (vec3)

proc glm_mat4_transpose_to*(m: Mat4, dest: var Mat4) {.cglm.}
## transpose mat4 and store result in dest
## source matrix will not be transposed unless dest is m
## param[in]  m    matrix
## param[out] dest result

proc glm_mat4_transpose*(m: var Mat4) {.cglm.}
## transpose mat4 and store result in the same matrix
## param[in, out] m source and dest

proc glm_mat4_scale_p*(m: var Mat4, s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix without simd optimization
## multiple matrix with scalar
## param[in, out] m matrix
## param[in]      s scalar

proc glm_mat4_scale*(m: var Mat4, s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix
## multiply matrix with scalar
## param[in, out] m matrix
## param[in]      s scalar

proc glm_mat4_det*(mat: Mat4): cfloat {.cglm.}
## mat4 determinant
## param[in]  mat  matrix
## return     determinant

proc glm_mat4_inv*(mat: Mat4, dest: var Mat4) {.cglm.}
## inverse mat4 and store in dest
## param[in]  mat  matrix
## param[out] dest inverse matrix

proc glm_mat4_inv_fast*(mat: Mat4, dest: var Mat4) {.cglm.}
## inverse mat4 and store in dest
## this func uses reciprocal approximation without extra corrections
## e.g Newton-Raphson. this should work faster than normal,
## to get more precise use glm_mat4_inv version.
##
## NOTE: You will lose precision, glm_mat4_inv is more accurate
##
## param[in]  mat  matrix
## param[out] dest inverse matrix
proc glm_mat4_swap_col*(mat: var Mat4, col1, col2: cint) {.cglm.}
## swap two matrix columns
## param[in,out] mat  matrix
## param[in]     col1 col1
## param[in]     col2 col2

proc glm_mat4_swap_row*(mat: var Mat4, row1, row2: cint) {.cglm.}
## swap two matrix rows
## param[in,out] mat  matrix
## param[in]     row1 row1
## param[in]     row2 row2

proc glm_mat4_rmc*(r: Vec4, m: Mat4, c: Vec4): cfloat {.cglm.}
## helper for R (row vector) * M (matrix) * C (column vector)
## rmc stands for Row * Matrix * Column
## the result is scalar because R * M = Matrix1x4 (row vector),
## then Matrix1x4 * Vec4 (column vector) = Matrix1x1 (Scalar)
## param[in]  r   row vector or matrix1x4
## param[in]  m   matrix4x4
## param[in]  c   column vector or matrix4x1
## return     scalar value e.g. B(s)

proc glm_mat4_make*(src: ptr UncheckedArray[cfloat], dest: var Mat4) {.cglm.}
## Create mat4 matrix from pointer
## param[in]  src  pointer to an array of floats
## param[out] dest matrix