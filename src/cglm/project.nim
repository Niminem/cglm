import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_unprojecti*(pos: Vec3, invMat: Mat4, vp: Vec4, dest: var Vec3) {.cglm.}
## maps the specified viewport coordinates into specified space [1]
## the matrix should contain projection matrix.
## if you don't have ( and don't want to have ) an inverse matrix then use
## glm_unproject version. You may use existing inverse of matrix in somewhere
## else, this is why glm_unprojecti exists to save save inversion cost
## [1] space:
## 1- if m = invProj:     View Space
## 2- if m = invViewProj: World Space
## 3- if m = invMVP:      Object Space
## You probably want to map the coordinates into object space
## so use invMVP as m
## Computing viewProj:
## glm_mat4_mul(proj, view, viewProj);
## glm_mat4_mul(viewProj, model, MVP);
## glm_mat4_inv(viewProj, invMVP);
## param[in]  pos      point/position in viewport coordinates
## param[in]  invMat   matrix (see brief)
## param[in]  vp       viewport as [x, y, width, height]
## param[out] dest     unprojected coordinates

proc glm_unproject*(pos: Vec3, m: Mat4, vp: Vec4, dest: var Vec3) {.cglm.}
## maps the specified viewport coordinates into specified space [1]
## the matrix should contain projection matrix.
## this is same as glm_unprojecti except this function get inverse matrix for you.
## [1] space:
## 1- if m = proj:     View Space
## 2- if m = viewProj: World Space
## 3- if m = MVP:      Object Space
## You probably want to map the coordinates into object space
## so use MVP as m
## Computing viewProj and MVP:
## glm_mat4_mul(proj, view, viewProj);
## glm_mat4_mul(viewProj, model, MVP);
## param[in]  pos      point/position in viewport coordinates
## param[in]  m        matrix (see brief)
## param[in]  vp       viewport as [x, y, width, height]
## param[out] dest     unprojected coordinates

proc glm_project*(pos: Vec3, m: Mat4, vp: Vec4, dest: var Vec3) {.cglm.}
## map object coordinates to window coordinates
## Computing MVP:
## glm_mat4_mul(proj, view, viewProj);
## glm_mat4_mul(viewProj, model, MVP);
## param[in]  pos      object coordinates
## param[in]  m        MVP matrix
## param[in]  vp       viewport as [x, y, width, height]
## param[out] dest     projected coordinates

proc glm_project_z*(v: Vec3, m: Mat4): cfloat {.cglm.}
## map object's z coordinate to window coordinates
## Computing MVP:
## glm_mat4_mul(proj, view, viewProj);
## glm_mat4_mul(viewProj, model, MVP);
## param[in]  v  object coordinates
## param[in]  m  MVP matrix
## returns projected z coordinate

proc glm_pickmatrix*(center: Vec2, size: Vec2, vp: Vec4, dest: var Mat4) {.cglm.}
## define a picking region
## param[in]  center   center [x, y] of a picking region in window coordinates
## param[in]  size     size [width, height] of the picking region in window coordinates
## param[in]  vp       viewport as [x, y, width, height]
## param[out] dest     projected coordinates