import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

const
    GLM_LBN*: cint = 0 # left  bottom near
    GLM_LTN*: cint = 1 # left  top    near
    GLM_RTN*: cint = 2 # right top    near
    GLM_RBN*: cint = 3 # right bottom near

    GLM_LBF*: cint = 4 # left  bottom far  */
    GLM_LTF*: cint = 5 # left  top    far  */
    GLM_RTF*: cint = 6 # right top    far  */
    GLM_RBF*: cint = 7 # right bottom far  */

    GLM_LEFT*: cint = 0
    GLM_RIGHT*: cint = 1
    GLM_BOTTOM*: cint = 2
    GLM_TOP*: cint = 3
    GLM_NEAR*: cint = 4
    GLM_FAR*: cint = 5

proc glm_frustum_planes*(m: Mat4, dest: var array[6, Vec4]) {.cglm.}
## extracts view frustrum planes
## 
## planes space:
## 1- if m = proj:     View Space
## 2- if m = viewProj: World Space
## 3- if m = MVP:      Object Space
## 
##  You probably want to extract planes in world space so use viewProj as m
##  Computing viewProj:
##    glm_mat4_mul(proj, view, viewProj);
##
##  Exracted planes order: [left, right, bottom, top, near, far]
## 
##  @param[in]  m    matrix (see brief)
##  @param[out] dest extracted view frustum planes (see brief)

proc glm_frustum_corners*(invMat: Mat4, dest: var array[8, Vec4]) {.cglm.}
##  @brief extracts view frustum corners using clip-space coordinates
##  
##  corners' space:
##   1- if m = invViewProj: World Space
##   2- if m = invMVP:      Object Space
##  
##  You probably want to extract corners in world space so use invViewProj
##  Computing invViewProj:
##    glm_mat4_mul(proj, view, viewProj);
##    ...
##    glm_mat4_inv(viewProj, invViewProj);
## 
##  if you have a near coord at i index, you can get it's far coord by i + 4
##  
##  Find center coordinates:
##    for (j = 0; j < 4; j++) {
##      glm_vec3_center(corners[i], corners[i + 4], centerCorners[i]);
##    }
##  
##  @param[in]  invMat matrix (see brief)
##  @param[out] dest   exracted view frustum corners (see brief)

proc glm_frustum_center*(corners: array[8, Vec4], dest: var Vec4) {.cglm.}
## finds center of view frustum
## @param[in]  corners view frustum corners
## @param[out] dest    view frustum center

proc glm_frustum_box*(corners: array[8, Vec4], m: Mat4, box: var array[2, Vec3]) {.cglm.}
## finds bounding box of frustum relative to given matrix e.g. view mat
##
## @param[in]  corners view frustum corners
## @param[in]  m       matrix to convert existing conners
## @param[out] box     bounding box as array [min, max]

proc glm_frustum_corners_at*(corners: array[8, Vec4], splitDist, farDist: cfloat, planeCorners: var array[4, Vec4]) {.cglm.}
## finds planes corners which is between near and far planes (parallel)
##
## this will be helpful if you want to split a frustum e.g. CSM/PSSM. This will
## find planes' corners but you will need to one more plane.
## Actually you have it, it is near, far or created previously with this func ;)
##
## @param[in]  corners view  frustum corners
## @param[in]  splitDist     split distance
## @param[in]  farDist       far distance (zFar)
## @param[out] planeCorners  plane corners [LB, LT, RT, RB]