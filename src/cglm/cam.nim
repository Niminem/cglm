import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_frustum*(left: cfloat, right: cfloat,
                  bottom: cfloat, top: cfloat,
                  nearZ: cfloat, farZ: cfloat,
                  dest: var Mat4) {.cglm.}
## set up perspective projection matrix
## param[in] left    viewport.left
## param[in] right   viewport.right
## param[in] bottom  viewport.bottom
## param[in] top     viewport.top
## param[in] nearZ   near clipping plane
## param[in] farZ    far clipping plane
## param[out] dest   result matrix

proc glm_ortho*(left: cfloat, right: cfloat,
                bottom: cfloat, top: cfloat,
                nearZ: cfloat, farZ: cfloat,
                dest: var Mat4) {.cglm.}
## set up orthographic projection matrix
## param[in] left    viewport.left
## param[in] right   viewport.right
## param[in] bottom  viewport.bottom
## param[in] top     viewport.top
## param[in] nearZ   near clipping plane
## param[in] farZ    far clipping plane
## param[out] dest   result matrix

proc glm_ortho_aabb*(box: array[2, Vec3], dest: var Mat4) {.cglm.}
## set up orthographic projection matrix using bounding box
## bounding box (AABB) must be in view space
## param[in]  box   AABB
## param[out] dest  result matrix

proc glm_ortho_aabb_p*(box: array[2, Vec3], padding: cfloat, dest: var Mat4) {.cglm.}
## set up orthographic projection matrix using bounding box
## bounding box (AABB) must be in view space
## param[in]  box     AABB
## param[in]  padding
## param[out] dest    result matrix

proc glm_ortho_aabb_pz*(box: array[2, Vec3], padding: cfloat, dest: var Mat4) {.cglm.}
## set up orthographic projection matrix using bounding box
## bounding box (AABB) must be in view space
## param[in]  box     AABB
## param[in]  padding for near and far
## param[out] dest    result matrix

proc glm_ortho_default*(aspect: cfloat, dest: var Mat4) {.cglm.}
## set up unit orthographic projection matrix
## param[in]  aspect aspect ration ( width / height )
## param[out] dest   result matrix

proc glm_ortho_default_s*(aspect: cfloat, size: cfloat, dest: var Mat4) {.cglm.}
## set up orthographic projection matrix with given CUBE size
## param[in]  aspect aspect ratio ( width / height )
## param[in]  size   cube size
## param[out] dest   result matrix

proc glm_perspective*(fovy: cfloat, aspect: cfloat, nearZ: cfloat, farZ: cfloat, dest: var Mat4) {.cglm.}
## set up perspective projection matrix
## param[in]  fovy    field of view angle
## param[in]  aspect  aspect ratio ( width / height )
## param[in]  nearZ   near clipping plane
## param[in]  farZ    far clipping planes
## param[out] dest    result matrix

proc glm_persp_move_far*(proj: var Mat4, deltaFar: cfloat) {.cglm.}
## extend perspective projection matrix's far distance
##
## this function does not guarantee far >= near, be aware of that!
## param[in, out] proj projection matrix to extend
## param[in] deltaFar distance from existing far (negative to shrink)

proc glm_perspective_default*(aspect: cfloat, dest: var Mat4) {.cglm.}
## set up perspective projection matrix with default near/far and angle values
## param[in]  aspect aspect ratio ( width / height )
## param[out] dest   result matrix

proc glm_perspective_resize*(aspect: cfloat, proj: var Mat4) {.cglm.}
## resize perspective matrix by aspect ratio ( width / height )
## this makes very easy to resize proj matrix when window /viewport resized
## param[in]      aspect aspect ratio ( width / height )
## param[in, out] proj   perspective projection matrix

proc glm_lookat*(eye: Vec3, center: Vec3, up: Vec3, dest: var Mat4) {.cglm.}
## set up view matrix
## NOTE: the UP vector must not be parallel to the line of sight from
##       the eye point to the reference point
## param[in] eye eye vector
## param[in] center center vector
## param[in] up up vector
## param[in] dest result matrix

proc glm_look*(eye: Vec3, dir: Vec3, up: Vec3, dest: var Mat4) {.cglm.}
## convenient wrapper for lookat: if you only have direction not target self
## then this might be useful. Because you need to get target from direction.
## NOTE: The UP vector must not be parallel to the line of sight from
##       the eye point to the reference point
## param[in]  eye    eye vector
## param[in]  dir    direction vector
## param[in]  up     up vector
## param[out] dest   result matrix

proc glm_look_anyup*(eye: Vec3, dir: Vec3, dest: var Mat4) {.cglm.}
## convenient wrapper for look: if you only have direction and if you don't
## care what UP vector is then this might be useful to create view matrix
## param[in]  eye    eye vector
## param[in]  dir    direction vector
## param[out] dest   result matrix

proc glm_persp_decomp*(proj: Mat4, nearZ: var cfloat, farZ: var cfloat,
                       top: var cfloat, bottom: var cfloat,
                       left: var cfloat, right: var cfloat) {.cglm.}
## decompose frustum values of perspective projection
## param[in]  proj    perspective projection matrix
## param[out] nearZ   near
## param[out] farZ    far
## param[out] top     top
## param[out] bottom  bottom
## param[out] left    left
## param[out] right   right

proc glm_persp_decompv*(proj: Mat4, dest: var array[6, cfloat]) {.cglm.}
## decompose frustum values of perspective projection
## this makes easy to get all values at once
## param[in]  proj    perspective projection matrix
## param[out] dest    array

proc glm_persp_decomp_x*(proj: Mat4, left: var cfloat, right: var cfloat) {.cglm.}
## decompose left and right values of perspective projection
## x stands for x axis (left / right axis)
## param[in]  proj  perspective projection matrix
## param[out] left  left
## param[out] right right

proc glm_persp_decomp_y*(proj: Mat4, top: var cfloat, bottom: var cfloat) {.cglm.}
## decompose top and bottom values of perspective projection
## y stands for y axis (top / bottom axis)
## param[in]  proj   perspective projection matrix
## param[out] top    top
## param[out] bottom bottom

proc glm_persp_decomp_z*(proj: Mat4, nearZ: var cfloat, farZ: var cfloat) {.cglm.}
## decompose near and far values of perspective projection
## z stands for z axis (near / far axis)
## param[in]  proj    perspective projection matrix
## param[out] nearZ   near
## param[out] farZ    far

proc glm_persp_decomp_far*(proj: Mat4, farZ: var cfloat) {.cglm.}
## decompose far value of perspective projection
## param[in]  proj   perspective projection matrix
## param[out] farZ   far

proc glm_persp_decomp_near*(proj: Mat4, nearZ: var cfloat) {.cglm.}
## decompose near value of perspective projection
## param[in]  proj   perspective projection matrix
## param[out] nearZ  near

proc glm_persp_sizes*(proj: Mat4, fovy: cfloat, dest: var Vec4) {.cglm.}
## returns sizes of near and far planes of perspective projection
## param[in]  proj perspective projection matrix
## param[in]  fovy fovy (see brief)
## param[out] dest sizes order: [Wnear, Hnear, Wfar, Hfar]