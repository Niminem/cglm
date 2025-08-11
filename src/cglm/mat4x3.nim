import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_mat4x3_copy*(mat: Mat4x3, dest: var Mat4x3) {.cglm.}
## copy all members of `mat` to `dest`
## param[in] mat: source
## param[out] dest: destination

proc glm_mat4x3_zero*(mat: var Mat4x3) {.cglm.}
## make given matrix zero
## param[in, out] mat: matrix

proc glm_mat4x3_make*(src: ptr UncheckedArray[cfloat], dest: var Mat4x3) {.cglm.}
## Create mat4x3 matrix from pointer
## param[in] src: pointer to an array of floats
## param[out] dest: matrix

proc glm_mat4x3_mul*(m1: Mat4x3, m2: Mat3x4, dest: var Mat3) {.cglm.}
## multiply `m1` and `m2` to `dest`
## param[in] m1: left matrix (mat4x3)
## param[in] m2: right matrix (mat3x4)
## param[out] dest: destination matrix (mat3)

proc glm_mat4x3_mulv*(m: Mat4x3, v: Vec4, dest: var Vec3) {.cglm.}
## multiply matrix with column vector and store in `dest` column vector
## param[in] m: matrix (left)
## param[in] v: vector (right, column vector)
## param[out] dest: result vector

proc glm_mat4x3_transpose*(m: Mat4x3, dest: var Mat3x4) {.cglm.}
## transpose matrix and store in `dest`
## param[in] m: matrix
## param[out] dest: result

proc glm_mat4x3_scale*(m: var Mat4x3, s: cfloat) {.cglm.}
## scale (multiply with scalar) matrix
## multiply matrix with scalar
## param[in, out] m: matrix
## param[in] s: scalar