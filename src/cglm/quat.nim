import base

## /*
##  * IMPORTANT:
##  * ----------------------------------------------------------------------------
##  * cglm stores quat as [x, y, z, w] since v0.3.6
##  *
##  * it was [w, x, y, z] before v0.3.6 it has been changed to [x, y, z, w]
##  * with v0.3.6 version.
##  * ----------------------------------------------------------------------------
##  */

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_quat_identity*(q: var Versor) {.cglm.} ## makes given quat to identity
proc glm_quat_identity_array*(q: ptr UncheckedArray[Versor], count: csize_t) {.cglm.} ## make given quaternion array's each element identity quaternion
proc glm_quat_init*(q: var Versor; x, y, z, w: cfloat) {.cglm.} ## inits quaternion with raw values (w is real part)
proc glm_quatv*(q: var Versor; angle: cfloat; axis: Vec3) {.cglm.} ## creates NEW quaternion with axis vector
                                                                   ## param[out] q quaternion
                                                                   ## param[in] angle angle (radians)
                                                                   ## param[in] axis axis
proc glm_quat*(q: var Versor; angle, x, y, z: cfloat) {.cglm.} ## creates NEW quaternion with individual axis components
                                                                   ## param[out] q quaternion
                                                                   ## param[in] angle angle (radians)
                                                                   ## param[in] x axis.x
                                                                   ## param[in] y axis.y
                                                                   ## param[in] z axis.z
proc glm_quat_copy*(q: Versor; dest: var Versor) {.cglm.} ## copy quaternion to another one
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest destination
proc glm_quat_from_vecs*(a: Vec3; b: Vec3; dest: var Versor) {.cglm.} ## compute quaternion rotating vector A to vector B
                                                                   ## param[in] a vec3 (must have unit length)
                                                                   ## param[in] b vec3 (must have unit length)
                                                                   ## param[out] dest quaternion (of unit length)
proc glm_quat_norm*(q: Versor): cfloat {.cglm.} ## returns norm (magnitude) of quaternion
                                                                   ## param[in] q quaternion
proc glm_quat_normalize_to*(q: Versor; dest: var Versor) {.cglm.} ## normalize quaternion and store result in dest
                                                                   ## param[in] q quaternion to normalze
                                                                   ## param[out] dest destination quaternion
proc glm_quat_normalize*(q: var Versor) {.cglm.} ## normalize quaternion
                                                 ## param[in, out] q quaternion
proc glm_quat_dot*(p: Versor; q: Versor): cfloat {.cglm.} ## dot product of two quaternion
                                                          ## param[in] p quaternion 1
                                                          ## param[in] q quaternion 2
proc glm_quat_conjugate*(q: Versor; dest: var Versor) {.cglm.} ## conjugate of quaternion
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest conjugate
proc glm_quat_inv*(q: Versor; dest: var Versor) {.cglm.} ## inverse of non-zero quaternion
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest inverse quaternion
proc glm_quat_add*(p: Versor; q: Versor; dest: var Versor) {.cglm.} ## add (componentwise) two quaternions and store result in dest
                                                                   ## param[in] p quaternion 1
                                                                   ## param[in] q quaternion 2
                                                                   ## param[out] dest result quaternion
proc glm_quat_sub*(p: Versor; q: Versor; dest: var Versor) {.cglm.} ## subtract (componentwise) two quaternions and store result in dest
                                                                   ## param[in] p quaternion 1
                                                                   ## param[in] q quaternion 2
                                                                   ## param[out] dest result quaternion
proc glm_quat_real*(q: Versor): cfloat {.cglm.} ## returns real part of quaternion
                                                                   ## param[in] q quaternion
proc glm_quat_imag*(q: Versor; dest: var Vec3) {.cglm.} ## returns imaginary part of quaternion
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest imag
proc glm_quat_imagn*(q: Versor; dest: var Vec3) {.cglm.} ## returns normalized imaginary part of quaternion
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest imag normalized
proc glm_quat_imaglen*(q: Versor): cfloat {.cglm.} ## returns length of imaginary part of quaternion
                                                                   ## param[in] q quaternion
proc glm_quat_angle*(q: Versor): cfloat {.cglm.} ## returns angle of quaternion
                                                                   ## param[in] q quaternion
proc glm_quat_axis*(q: Versor; dest: var Vec3) {.cglm.} ## axis of quaternion
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest axis of quaternion
proc glm_quat_mul*(p: Versor; q: Versor; dest: var Versor) {.cglm.} ## multiplies two quaternion and stores result in dest
                                                                   ## this is also called Hamilton Product
                                                                   ## param[in] p quaternion 1
                                                                   ## param[in] q quaternion 2
                                                                   ## param[out] dest result quaternion
proc glm_quat_mat4*(q: Versor; dest: var Mat4) {.cglm.} ## convert quaternion to mat4
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest result matrix
proc glm_quat_mat4t*(q: Versor; dest: var Mat4) {.cglm.} ## convert quaternion to mat4 (transposed)
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest result matrix as transposed
proc glm_quat_mat3*(q: Versor; dest: var Mat3) {.cglm.} ## convert quaternion to mat3
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest result matrix
proc glm_quat_mat3t*(q: Versor; dest: var Mat3) {.cglm.} ## convert quaternion to mat3 (transposed)
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest result matrix
proc glm_quat_lerp*(fromV: Versor; to: Versor; t: cfloat; dest: var Versor) {.cglm.} ## interpolates between two quaternions using linear interpolation (LERP)
                                                                   ## param[in] fromV quaternion 1
                                                                   ## param[in] to quaternion 2
                                                                   ## param[in] t interpolant (amount)
                                                                   ## param[out] dest result quaternion
proc glm_quat_lerpc*(fromV: Versor; to: Versor; t: cfloat; dest: var Versor) {.cglm.} ## interpolates between two quaternions using linear interpolation (LERP)
                                                                   ## param[in] fromV quaternion 1
                                                                   ## param[in] to quaternion 2
                                                                   ## param[in] t interpolant (amount) clamped between 0 and 1
                                                                   ## param[out] dest result quaternion
proc glm_quat_nlerp*(fromV: Versor; to: Versor; t: cfloat; dest: var Versor) {.cglm.} ## interpolates between two quaternions taking the
                                                                   ## shortest rotation path using normalized linear interpolation (NLERP)
                                                                   ## param[in] fromV quaternion 1
                                                                   ## param[in] to quaternion 2
                                                                   ## param[in] t interpolant (amount)
                                                                   ## param[out] dest result quaternion
proc glm_quat_slerp*(fromV: Versor; to: Versor; t: cfloat; dest: var Versor) {.cglm.} ## interpolates between two quaternions using spherical linear interpolation (SLERP)
                                                                   ## param[in] fromV quaternion 1
                                                                   ## param[in] to quaternion 2
                                                                   ## param[in] t amount
                                                                   ## param[out] dest result quaternion
proc glm_quat_slerp_longest*(fromV: Versor; to: Versor; t: cfloat; dest: var Versor) {.cglm.} ## interpolates between two quaternions using spherical
                                                                   ## linear interpolation (SLERP) and always takes the long path
                                                                   ## param[in] fromV quaternion 1
                                                                   ## param[in] to quaternion 2
                                                                   ## param[in] t amount
                                                                   ## param[out] dest result quaternion
proc glm_quat_look*(eye: Vec3; ori: Versor; dest: var Mat4) {.cglm.} ## creates view matrix using quaternion as camera orientation
                                                                   ## param[in] eye eye position
                                                                   ## param[in] ori orientation in world space as quaternion
                                                                   ## param[out] dest view matrix
proc glm_quat_for*(dir: Vec3; up: Vec3; dest: var Versor) {.cglm.} ## creates look rotation quaternion
                                                                   ## param[in] dir direction to look
                                                                   ## param[in] up up vector
                                                                   ## param[out] dest destination quaternion
proc glm_quat_forp*(fromV: Vec3; to: Vec3; up: Vec3; dest: var Versor) {.cglm.} ## creates look rotation quaternion using source and destination positions
                                                                   ## p suffix stands for position
                                                                   ## param[in] fromV source point
                                                                   ## param[in] to destination point
                                                                   ## param[in] up up vector
                                                                   ## param[out] dest destination quaternion
proc glm_quat_rotatev*(q: Versor; v: Vec3; dest: var Vec3) {.cglm.} ## rotate vector using quaternion
                                                                   ## param[in] q quaternion
                                                                   ## param[in] v vector to rotate
                                                                   ## param[out] dest rotated vector
proc glm_quat_rotate*(m: Mat4; q: Versor; dest: var Mat4) {.cglm.} ## rotate existing transform matrix using quaternion
                                                                   ## param[in] m existing transform matrix
                                                                   ## param[in] q quaternion
                                                                   ## param[out] dest rotated matrix/transform
proc glm_quat_rotate_at*(m: Mat4; q: Versor; pivot: Vec3) {.cglm.} ## rotate existing transform matrix using quaternion at pivot point
                                                                   ## param[in, out] m existing transform matrix
                                                                   ## param[in] q quaternion
                                                                   ## param[out] pivot pivot
proc glm_quat_rotate_atm*(m: var Mat4; q: Versor; pivot: Vec3) {.cglm.} ## rotate NEW transform matrix using quaternion at pivot point
                                                                   ## this creates rotation matrix, it assumes you don't have a matrix
                                                                   ## this should work faster than glm_quat_rotate_at because it reduces one glm_translate.
                                                                   ## param[out] m existing transform matrix
                                                                   ## param[in] q quaternion
                                                                   ## param[in] pivot pivot
proc glm_quat_make*(src: ptr UncheckedArray[cfloat]; dest: var Versor) {.cglm.} ## Create quaternion from pointer
                                                                   ## param[in] src pointer to an array of floats
                                                                   ## param[out] dest quaternion