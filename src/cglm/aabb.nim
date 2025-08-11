import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

## Covers both box.h and aabb2d.h

proc glm_aabb_transform*(box: array[2, Vec3], m: Mat4, dest: var array[2, Vec3]) {.cglm.}
## apply transform to Axis-Aligned Bounding Box
## param[in]  box  bounding box
## param[in]  m    transform matrix
## param[out] dest transformed bounding box

proc glm_aabb_merge*(box1: array[2, Vec3], box2: array[2, Vec3], dest: var array[2, Vec3]) {.cglm.}
## merges two AABB bounding box and creates new one
## two box must be in same space, if one of box is in different space then
## you should consider to convert it's space by glm_box_space
## param[in]  box1 bounding box 1
## param[in]  box2 bounding box 2
## param[out] dest merged bounding box

proc glm_aabb_crop*(box: array[2, Vec3], cropBox: array[2, Vec3], dest: var array[2, Vec3]) {.cglm.}
## crops a bounding box with another one.
## this could be useful for getting a bbox which fits with view frustum and
## object bounding boxes. In this case you crop view frustum box with objects
## box
## param[in]  box     bounding box 1
## param[in]  cropBox crop box
## param[out] dest    cropped bounding box

proc glm_aabb_crop_until*(box: array[2, Vec3], cropBox: array[2, Vec3], clampBox: array[2, Vec3], dest: var array[2, Vec3]) {.cglm.}
## crops a bounding box with another one until it hits a minimum box
## this could be useful for getting a bbox which fits with view frustum and
## object bounding boxes. In this case you crop view frustum box with objects
## box
## param[in]  box      bounding box
## param[in]  cropBox  crop box
## param[in]  clampBox minimum box
## param[out] dest     cropped bounding box

proc glm_aabb_frustum*(box: array[2, Vec3], planes: array[6, Vec4]): bool {.cglm.}
## check if AABB intersects with frustum planes
## this could be useful for frustum culling using AABB.
## OPTIMIZATION HINT:
## if planes order is similar to LEFT, RIGHT, BOTTOM, TOP, NEAR, FAR
## then this method should run even faster because it would only use two planes
## if object is not inside the two planes
## fortunately cglm extracts planes as this order! just pass what you got!
## param[in]  box     bounding box
## param[in]  planes  frustum planes

proc glm_aabb_invalidate*(box: var array[2, Vec3]) {.cglm.}
## invalidate AABB min and max values
## param[in, out]  box bounding box

proc glm_aabb_isvalid*(box: array[2, Vec3]): bool {.cglm.}
## check if AABB is valid or not
## param[in]  box bounding box

proc glm_aabb_size*(box: array[2, Vec3]): cfloat {.cglm.}
## distance between of min and max
## param[in]  box bounding box

proc glm_aabb_radius*(box: array[2, Vec3]): cfloat {.cglm.}
## radius of sphere which surrounds AABB
## param[in]  box bounding box

proc glm_aabb_center*(box: array[2, Vec3], dest: var Vec3) {.cglm.}
## computes center point of AABB
## param[in]   box  bounding box
## param[out]  dest center of bounding box

proc glm_aabb_aabb*(box: array[2, Vec3], other: array[2, Vec3]): bool {.cglm.}
## check if two AABB intersects
## param[in]   box    bounding box
## param[in]   other  other bounding box

proc glm_aabb_sphere*(box: array[2, Vec3], s: Vec4): bool {.cglm.}
## check if AABB intersects with sphere
## 
## https://github.com/erich666/GraphicsGems/blob/master/gems/BoxSphere.c
## Solid Box - Solid Sphere test.
## 
## Sphere Representation in cglm: [center.x, center.y, center.z, radii]
## 
## @param[in]   box    solid bounding box
## @param[in]   s      solid sphere

proc glm_aabb_point*(box: array[2, Vec3], point: Vec3): bool {.cglm.}
## check if point is inside of AABB
## param[in]   box    bounding box
## param[in]   point  point

proc glm_aabb_contains*(box: array[2, Vec3], other: array[2, Vec3]): bool {.cglm.}
## check if AABB contains other AABB
## param[in]   box    bounding box
## param[in]   other  other bounding box

proc glm_aabb2d_zero*(aabb: var array[2, Vec2]) {.cglm.}
## make AABB zero
## param[in, out]  aabb AABB

proc glm_aabb2d_copy*(aabb: array[2, Vec2], dest: var array[2, Vec2]) {.cglm.}
## copy all members of [aabb] to [dest]
## param[in]  aabb source
## param[out] dest destination

proc glm_aabb2d_transform*(aabb: array[2, Vec2], m: Mat3, dest: var array[2, Vec2]) {.cglm.}
## apply transform to Axis-Aligned Bounding aabb
## param[in]  aabb  bounding aabb
## param[in]  m    transform matrix
## param[out] dest transformed bounding aabb

proc glm_aabb2d_merge*(aabb1: array[2, Vec2], aabb2: array[2, Vec2], dest: var array[2, Vec2]) {.cglm.}
## merges two AABB bounding aabb and creates new one
##
## two aabb must be in same space, if one of aabb is in different space then
## you should consider to convert it's space by glm_aabb_space
##
## param[in]  aabb1 bounding aabb 1
## param[in]  aabb2 bounding aabb 2
## param[out] dest merged bounding aabb

proc glm_aabb2d_crop*(aabb: array[2, Vec2], cropAabb: array[2, Vec2], dest: var array[2, Vec2]) {.cglm.}
## crops a bounding aabb with another one.
##
##  this could be useful for getting a baabb which fits with view frustum and
##  object bounding aabbes. In this case you crop view frustum aabb with objects
##  aabb
##
## param[in]  aabb     bounding aabb 1
## param[in]  cropAabb crop aabb
## param[out] dest     cropped bounding aabb

proc glm_aabb2d_crop_until*(aabb: array[2, Vec2], cropAabb: array[2, Vec2],
                            clampAabb: array[2, Vec2], dest: var array[2, Vec2]) {.cglm.}
## crops a bounding aabb with another one
## 
##  this could be useful for getting a baabb which fits with view frustum and
##  object bounding aabbes. In this case you crop view frustum aabb with objects
##  aabb
##
## param[in]  aabb     bounding aabb
## param[in]  cropAabb crop aabb
## param[in]  clampAabb minimum aabb
## param[out] dest     cropped bounding aabb

proc glm_aabb2d_invalidate*(aabb: var array[2, Vec2]) {.cglm.}
## invalidate AABB min and max values
## param[in, out]  aabb bounding aabb

proc glm_aabb2d_isvalid*(aabb: array[2, Vec2]): bool {.cglm.}
## check if AABB is valid or not
## param[in]  aabb bounding aabb

proc glm_aabb2d_diag*(aabb: array[2, Vec2]): cfloat {.cglm.}
## distance between of min and max
## param[in]  aabb bounding aabb

proc glm_aabb2d_sizev*(aabb: array[2, Vec2], dest: var Vec2) {.cglm.}
## size of aabb
## param[in]  aabb bounding aabb
## param[out]  dest size

proc glm_aabb2d_radius*(aabb: array[2, Vec2]): cfloat {.cglm.}
## radius of sphere which surrounds AABB
## param[in]  aabb bounding aabb

proc glm_aabb2d_center*(aabb: array[2, Vec2], dest: var Vec2) {.cglm.}
## computes center point of AABB
## param[in]   aabb  bounding aabb
## param[out]  dest center of bounding aabb

proc glm_aabb2d_aabb*(aabb: array[2, Vec2], other: array[2, Vec2]): bool {.cglm.}
## check if two AABB intersects
## param[in]   aabb    bounding aabb
## param[in]   other  other bounding aabb

proc glm_aabb2d_circle*(aabb: array[2, Vec2], c: Vec3): bool {.cglm.}
## check if AABB intersects with a circle
## 
## Circle Representation in cglm: [center.x, center.y, radii]
## 
## param[in]   aabb   solid bounding aabb
## param[in]   c      solid circle

proc glm_aabb2d_point*(aabb: array[2, Vec2], point: Vec2): bool {.cglm.}
## check if point is inside of AABB
## param[in]   aabb    bounding aabb
## param[in]   point  point

proc glm_aabb2d_contains*(aabb: array[2, Vec2], other: array[2, Vec2]): bool {.cglm.}
## check if AABB contains other AABB
## param[in]   aabb    bounding aabb
## param[in]   other  other bounding aabb