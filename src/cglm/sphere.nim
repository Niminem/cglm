import base

## Sphere Representation in cglm: [center.x, center.y, center.z, radii]
## You could use this representation or you can convert it to vec4 before call
## any function

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_sphere_radii*(s: Vec4): cfloat {.cglm.} ## helper for getting sphere radius (returns radii)
proc glm_sphere_transform*(s: Vec4, m: Mat4, dest:var Vec4) {.cglm.} ## apply transform to sphere (transformed sphere), it is just wrapper for glm_mat4_mulv3
                                                                      ## param[in] s: sphere, param[in] m: transform matrix, param[out] dest: transformed sphere
proc glm_sphere_merge*(s1: Vec4, s2: Vec4, dest: var Vec4) {.cglm.} ## merges two spheres and creates a new one
                                                                    ## two sphere must be in same space, for instance if one in world space then
                                                                    ## the other must be in world space too, not in local space.
                                                                    ## param[in] s1: sphere 1, param[in] s2: sphere 2, param[out] dest: merged/extended sphere
proc glm_sphere_sphere*(s1: Vec4, s2: Vec4): bool {.cglm.} ## check if two sphere intersects
proc glm_sphere_point*(s: Vec4, point: Vec3): bool {.cglm.} ## check if sphere intersects with point