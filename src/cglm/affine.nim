import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

## Affine ----------

proc glm_translate_make*(m: var Mat4, v: Vec3) {.cglm.}
## creates NEW translate transform matrix by v vector
## param[out]  m  affine transform
## param[in]   v  translate vector [x, y, z]

proc glm_scale_to*(m: Mat4, v: Vec3, dest: var Mat4) {.cglm.}
## scales existing transform matrix by v vector
## param[in]  m    affine transform
## param[in]  v    scale vector [x, y, z]
## param[out] dest scaled matrix

proc glm_scale_make*(m: var Mat4, v: Vec3) {.cglm.}
## creates NEW scale matrix by v vector
## param[out]  m  affine transform
## param[in]   v  scale vector [x, y, z]

proc glm_scale*(m: var Mat4, v: Vec3) {.cglm.}
## scales existing transform matrix by v vector
## and stores result in same matrix
## param[in, out]  m  affine transform
## param[in]       v  scale vector [x, y, z]

proc glm_scale_uni*(m: var Mat4, s: cfloat) {.cglm.}
## applies uniform scale to existing transform matrix v = [s, s, s]
## and stores result in same matrix
## param[in, out]  m  affine transform
## param[in]       s  scale factor

proc glm_rotate_make*(m: var Mat4, angle: cfloat, axis: Vec3) {.cglm.}
## creates NEW rotation matrix by angle and axis
## axis will be normalized so you don't need to normalize it
## param[out] m     affine transform
## param[in]  angle angle (radians)
## param[in]  axis  axis

proc glm_decompose_scalev*(m: Mat4, s: var Vec3) {.cglm.}
## decompose scale vector
## param[in]  m  affine transform
## param[out] s  scale vector (Sx, Sy, Sz)

proc glm_uniscaled*(m: Mat4): bool {.cglm.}
## returns true if matrix is uniform scaled. This is helpful for
## creating normal matrix.
## param[in] m m

proc glm_decompose_rs*(m: Mat4, r: var Mat4, s: var Vec3) {.cglm.}
## decompose rotation matrix (mat4) and scale vector [Sx, Sy, Sz]
## DON'T pass projected matrix here
## param[in]  m affine transform
## param[out] r rotation matrix
## param[out] s scale matrix

proc glm_decompose*(m: Mat4, t: var Vec4, r: var Mat4, s: var Vec3) {.cglm.}
## decompose affine transform, TODO: extract shear factors.
## DON'T pass projected matrix here
## param[in]  m affine transform
## param[out] t translation vector
## param[out] r rotation matrix (mat4)
## param[out] s scaling vector [X, Y, Z]



## Affine Pre ----------

proc glm_translate*(m: var Mat4, v: Vec3) {.cglm.}
## translate existing transform matrix by v vector
## and stores result in same matrix
## param[in, out]  m  affine transform
## param[in]       v  translate vector [x, y, z]

proc glm_translate_to*(m: Mat4, v: Vec3, dest: var Mat4) {.cglm.}
## translate existing transform matrix by v vector
## and store result in dest
## source matrix will remain same
## param[in]  m    affine transform
## param[in]  v    translate vector [x, y, z]
## param[out] dest translated matrix

proc glm_translate_x*(m: var Mat4, x: cfloat) {.cglm.}
## translate existing transform matrix by x factor
## param[in, out]  m  affine transform
## param[in]       x  x factor

proc glm_translate_y*(m: var Mat4, y: cfloat) {.cglm.}
## translate existing transform matrix by y factor
## param[in, out]  m  affine transform
## param[in]       y  y factor

proc glm_translate_z*(m: var Mat4, z: cfloat) {.cglm.}
## translate existing transform matrix by z factor
## param[in, out]  m  affine transform
## param[in]       z  z factor

proc glm_rotate_x*(m: Mat4, angle: cfloat, dest: var Mat4) {.cglm.}
## rotate existing transform matrix around X axis by angle
## and store result in dest
## param[in]   m      affine transform
## param[in]   angle  angle (radians)
## param[out]  dest   rotated matrix

proc glm_rotate_y*(m: Mat4, angle: cfloat, dest: var Mat4) {.cglm.}
## rotate existing transform matrix around Y axis by angle
## and store result in dest
## param[in]   m      affine transform
## param[in]   angle  angle (radians)
## param[out]  dest   rotated matrix

proc glm_rotate_z*(m: Mat4, angle: cfloat, dest: var Mat4) {.cglm.}
## rotate existing transform matrix around Z axis by angle
## and store result in dest
## param[in]   m      affine transform
## param[in]   angle  angle (radians)
## param[out]  dest   rotated matrix

proc glm_rotate*(m: var Mat4, angle: cfloat, axis: Vec3) {.cglm.}
##  rotate existing transform matrix 
##       around given axis by angle at ORIGIN (0,0,0)
##
##  ❗️IMPORTANT ❗️**
##  *
##  If you need to rotate object around itself e.g. center of object or at
##  some point [of object] then `glm_rotate_at()` would be better choice to do so.
##  
##  Even if object's model transform is identity, rotation may not be around
##  center of object if object does not lay out at ORIGIN perfectly.
## 
##  Using `glm_rotate_at()` with center of bounding shape ( AABB, Sphere ... )
##  would be an easy option to rotate around object if object is not at origin.
##
##  One another option to rotate around itself at any point is `glm_spin()`
##  which is perfect if only rotating around model position is desired e.g. not
##  specific point on model for instance center of geometry or center of mass,
##  again if geometry is not perfectly centered at origin at identity transform,
##  rotation may not be around geometry.
##
##  param[in, out]  m      affine transform
##  param[in]       angle  angle (radians)
##  param[in]       axis   axis

proc glm_rotate_at*(m: var Mat4, pivot: Vec3, angle: cfloat, axis: Vec3) {.cglm.}
## rotate existing transform matrix around given axis by angle at given pivot point (rotation center)
##
## param[in, out]  m      affine transform
## param[in]       pivot  rotation center
## param[in]       angle  angle (radians)
## param[in]       axis   axis

proc glm_rotate_atm*(m: var Mat4, pivot: Vec3, angle: cfloat, axis: Vec3) {.cglm.}
## creates NEW rotation matrix by angle and axis at given point
## this creates rotation matrix, it assumes you don't have a matrix
## this should work faster than glm_rotate_at because it reduces
## one glm_translate.
## 
## param[out] m     affine transform
## param[in]  pivot  rotation center
## param[in]  angle  angle (radians)
## param[in]  axis   axis

proc glm_spin*(m: var Mat4, angle: cfloat, axis: Vec3) {.cglm.}
## rotate existing transform matrix around given axis by angle around self (doesn't affected by position)
##
## param[in, out]  m      affine transform
## param[in]       angle  angle (radians)
## param[in]       axis   axis



## Affine Post ----------

proc glm_translated*(m: var Mat4, v: Vec3) {.cglm.}
## translate existing transform matrix by v vector
## and stores result in same matrix
##
## this is POST transform, applies to existing transform as last transform
##
## param[in, out]  m  affine transform
## param[in]       v  translate vector [x, y, z]

proc glm_translated_to*(m: Mat4, v: Vec3, dest: var Mat4) {.cglm.}
## translate existing transform matrix by v vector
## and store result in dest
##
## source matrix will remain same
##
##  this is POST transform, applies to existing transform as last transform
##
## param[in]  m    affine transform
## param[in]  v    translate vector [x, y, z]
## param[out] dest translated matrix
##

proc glm_translated_x*(m: var Mat4, x: cfloat) {.cglm.}
## translate existing transform matrix by x factor
## and stores result in same matrix
##
## this is POST transform, applies to existing transform as last transform
##
## param[in, out]  m  affine transform
## param[in]       x  x factor

proc glm_translated_y*(m: var Mat4, y: cfloat) {.cglm.}
## translate existing transform matrix by y factor
## and stores result in same matrix
##
## this is POST transform, applies to existing transform as last transform
##
## param[in, out]  m  affine transform
## param[in]       y  y factor

proc glm_translated_z*(m: var Mat4, z: cfloat) {.cglm.}
## translate existing transform matrix by z factor
## and stores result in same matrix
##
## this is POST transform, applies to existing transform as last transform
##
## param[in, out]  m  affine transform
## param[in]       z  z factor

proc glm_rotated_x*(m: Mat4, angle: cfloat, dest: var Mat4) {.cglm.}
## rotate existing transform matrix around X axis by angle
## and store result in dest
##
## this is POST transform, applies to existing transform as last transform
##
## param[in]   m      affine transform
## param[in]   angle  angle (radians)
## param[out]  dest   rotated matrix

proc glm_rotated_y*(m: Mat4, angle: cfloat, dest: var Mat4) {.cglm.}
## rotate existing transform matrix around Y axis by angle
## and store result in dest
##
## this is POST transform, applies to existing transform as last transform
##
## param[in]   m      affine transform
## param[in]   angle  angle (radians)
## param[out]  dest   rotated matrix

proc glm_rotated_z*(m: Mat4, angle: cfloat, dest: var Mat4) {.cglm.}
## rotate existing transform matrix around Z axis by angle
## and store result in dest
##
## this is POST transform, applies to existing transform as last transform
##
## param[in]   m      affine transform
## param[in]   angle  angle (radians)
## param[out]  dest   rotated matrix

proc glm_rotated*(m: var Mat4, angle: cfloat, axis: Vec3) {.cglm.}
## rotate existing transform matrix around given axis by angle
## and store result in same matrix
##
## this is POST transform, applies to existing transform as last transform
##
## param[in, out]  m      affine transform
## param[in]       angle  angle (radians)
## param[in]       axis   axis

proc glm_rotated_at*(m: var Mat4, pivot: Vec3, angle: cfloat, axis: Vec3) {.cglm.}
## rotate existing transform matrix around given axis by angle at given pivot point (rotation center)
## and store result in same matrix
##
## this is POST transform, applies to existing transform as last transform
##
## param[in, out]  m      affine transform
## param[in]       pivot  rotation center
## param[in]       angle  angle (radians)
## param[in]       axis   axis

proc glm_spinned*(m: var Mat4, angle: cfloat, axis: Vec3) {.cglm.}
## rotate existing transform matrix around given axis by angle around self (doesn't affected by position)
## 
## this is a POST transform, applies to existing transform as last transform
## 
## param[in, out]  m      affine transform
## param[in]       angle  angle (radians)
## param[in]       axis   axis



## Affine Mat ----------

proc glm_mul*(m1: Mat4, m2: Mat4, dest: var Mat4) {.cglm.}
## this is similar to glm_mat4_mul but specialized to affine transform
## 
## Matrix format should be:
## R  R  R  X
## R  R  R  Y
## R  R  R  Z
## 0  0  0  W
##
## this reduces some multiplications. It should be faster than mat4_mul.
## if you are not sure about matrix format then DON'T use this! use mat4_mul
## param[in]   m1    affine matrix 1
## param[in]   m2    affine matrix 2
## param[out]  dest  result matrix

proc glm_mul_rot*(m1: Mat4, m2: Mat4, dest: var Mat4) {.cglm.}
## this is similar to glm_mat4_mul but specialized to affine transform
## 
## Right Matrix format should be:
##  R  R  R  0
##  R  R  R  0
##  R  R  R  0
##  0  0  0  1
##
## this reduces some multiplications. It should be faster than mat4_mul.
## if you are not sure about matrix format then DON'T use this! use mat4_mul
##
## param[in]  m1    affine matrix 1
## param[in]  m2    affine matrix 2
## param[out] dest  result matrix

proc glm_inv_tr*(m: var Mat4) {.cglm.}
## inverse orthonormal rotation + translation matrix (rigid-body)
## @code
## X = | R  T |   X' = | R' -R'T |
##     | 0  1 |        | 0     1 |
## @endcode
## param[in,out]  mat  matrix



## Affine 2D ----------

proc glm_translate2d*(m: var Mat3, v: Vec2) {.cglm.}
## translate existing 2d transform matrix by v vector
## and stores result in same matrix
## param[in, out]  m  affine transform
## param[in]       v  translate vector [x, y]

proc glm_translate2d_to*(m: Mat3, v: Vec2, dest: var Mat3) {.cglm.}
## translate existing 2d transform matrix by v vector
## and store result in dest
## param[in]  m    affine transform
## param[in]  v    translate vector [x, y]
## param[out] dest translated matrix

proc glm_translate2d_x*(m: var Mat3, x: cfloat) {.cglm.}
## translate existing 2d transform matrix by x factor
## param[in, out]  m  affine transform
## param[in]       x  x factor

proc glm_translate2d_y*(m: var Mat3, y: cfloat) {.cglm.}
## translate existing 2d transform matrix by y factor
## param[in, out]  m  affine transform
## param[in]       y  y factor

proc glm_translate2d_make*(m: var Mat3, v: Vec2) {.cglm.}
## creates NEW translate 2d transform matrix by v vector
## param[out]  m  affine transform
## param[in]   v  translate vector [x, y]

proc glm_scale2d_to*(m: Mat3, v: Vec2, dest: var Mat3) {.cglm.}
## scale existing 2d transform matrix by v vector
## and store result in dest
## param[in]  m    affine transform
## param[in]  v    scale vector [x, y]
## param[out] dest scaled matrix

proc glm_scale2d_make*(m: var Mat3, v: Vec2) {.cglm.}
## creates NEW 2d scale matrix by v vector
## param[out]  m  affine transform
## param[in]   v  scale vector [x, y]

proc glm_scale2d*(m: var Mat3, v: Vec2) {.cglm.}
## scales existing 2d transform matrix by v vector
## param[in, out]  m  affine transform
## param[in]       v  scale vector [x, y]

proc glm_scale2d_uni*(m: var Mat3, s: cfloat) {.cglm.}
## applies uniform scale to existing 2d transform matrix v = [s, s]
## and stores result in same matrix
## param[in, out]  m  affine transform
## param[in]       s  scale factor

proc glm_rotate2d_make*(m: var Mat3, angle: cfloat) {.cglm.}
## creates NEW rotation matrix by angle around Z axis
## param[out] m     affine transform
## param[in]  angle angle (radians)

proc glm_rotate2d*(m: var Mat3, angle: cfloat) {.cglm.}
## rotate existing 2d transform matrix around Z axis by angle
## and stores result in same matrix
## param[in, out]  m      affine transform
## param[in]       angle  angle (radians)

proc glm_rotate2d_to*(m: Mat3, angle: cfloat, dest: var Mat3) {.cglm.}
## rotate existing 2d transform matrix around Z axis by angle
## and store result in dest
## param[in]  m      affine transform
## param[in]  angle  angle (radians)
## param[out] dest   destination