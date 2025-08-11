import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

type
    Glm_euler_seq* {.size: sizeof(cint).} = enum
        GLM_EULER_XYZ = cint (0 shl 0 or 1 shl 2 or 2 shl 4),
        GLM_EULER_XZY = cint (0 shl 0 or 2 shl 2 or 1 shl 4),
        GLM_EULER_YZX = cint (1 shl 0 or 2 shl 2 or 0 shl 4),
        GLM_EULER_YXZ = cint (1 shl 0 or 0 shl 2 or 2 shl 4),
        GLM_EULER_ZXY = cint (2 shl 0 or 0 shl 2 or 1 shl 4),
        GLM_EULER_ZYX = cint (2 shl 0 or 1 shl 2 or 0 shl 4)
##  if you have axis order like vec3 orderVec = [0, 1, 2] or [0, 2, 1]...
##  vector then you can convert it to this enum by doing this:
##  @code
##  glm_euler_seq order;
##  order = orderVec[0] | orderVec[1] << 2 | orderVec[2] << 4;
##  @endcode
##  you may need to explicit cast if required

proc glm_euler_order*(`ord`: array[3, cint]): Glm_euler_seq {.cglm.} ## convert array[3, int] to Glm_euler_seq

proc glm_euler_angles*(m: Mat4, dest: var Vec3) {.cglm.}
## extract euler angles (in radians) using xyz order
## @param[in]  m    affine transform
## @param[out] dest angles vector [x, y, z]

proc glm_euler_xyz*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler_xzy*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler_yxz*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler_yzx*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler_zxy*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler_zyx*(angles: Vec3, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[out] dest   rotation matrix

proc glm_euler_by_order*(angles: Vec3, `ord`: Glm_euler_seq, dest: var Mat4) {.cglm.}
## build rotation matrix from euler angles
## @param[in]  angles angles as vector [Xangle, Yangle, Zangle]
## @param[in]  ord    euler order
## @param[out] dest   rotation matrix

proc glm_euler_xyz_quat*(angles: Vec3, dest: var Versor) {.cglm.}
## creates NEW quaternion using rotation angles and does
##        rotations in x y z order (roll pitch yaw)
## @param[in]   angles angles x y z (radians)
## @param[out]  dest   quaternion

proc glm_euler_xzy_quat*(angles: Vec3, dest: var Versor) {.cglm.}
## creates NEW quaternion using rotation angles and does
##        rotations in x z y order (roll yaw pitch)
## @param[in]   angles angles x y z (radians)
## @param[out]  dest   quaternion

proc glm_euler_yxz_quat*(angles: Vec3, dest: var Versor) {.cglm.}
## creates NEW quaternion using rotation angles and does
##        rotations in y x z order (pitch roll yaw)
## @param[in]   angles angles x y z (radians)
## @param[out]  dest   quaternion

proc glm_euler_yzx_quat*(angles: Vec3, dest: var Versor) {.cglm.}
## creates NEW quaternion using rotation angles and does
##        rotations in y z x order (pitch yaw roll)
## @param[in]   angles angles x y z (radians)
## @param[out]  dest   quaternion

proc glm_euler_zxy_quat*(angles: Vec3, dest: var Versor) {.cglm.}
## creates NEW quaternion using rotation angles and does
##        rotations in z x y order (yaw roll pitch)
## @param[in]   angles angles x y z (radians)
## @param[out]  dest   quaternion

proc glm_euler_zyx_quat*(angles: Vec3, dest: var Versor) {.cglm.}
## creates NEW quaternion using rotation angles and does
##        rotations in z y x order (yaw pitch roll)
## @param[in]   angles angles x y z (radians)
## @param[out]  dest   quaternion