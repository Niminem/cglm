import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_ray_triangle*(origin: Vec3, direction: Vec3, v0: Vec3, v1: Vec3, v2: Vec3, d: var cfloat): bool {.cglm.} ## Möller–Trumbore ray-triangle intersection algorithm
                                                                                                                  ## param[in] origin         origin of ray
                                                                                                                  ## param[in] direction      direction of ray
                                                                                                                  ## param[in] v0             first vertex of triangle
                                                                                                                  ## param[in] v1             second vertex of triangle
                                                                                                                  ## param[in] v2             third vertex of triangle
                                                                                                                  ## param[in, out] d         distance to intersection
                                                                                                                  ## return whether there is intersection
proc glm_ray_sphere*(origin: Vec3, dir: var Vec3, s: Vec4, t1: var cfloat, t2: var cfloat): bool {.cglm.} ## ray-sphere intersection
                                                                                                          ## param[in]  origin ray origin
                                                                                                          ## param[out] dir    normalized ray direction
                                                                                                          ## param[in]  s      sphere  [center.x, center.y, center.z, radii]
                                                                                                          ## param[in]  t1     near point1 (closer to origin)
                                                                                                          ## param[in]  t2     far point2 (farther from origin)
                                                                                                          ## returns whether there is intersection
proc glm_ray_at*(orig: Vec3, dir: Vec3, t: cfloat, point: var Vec3) {.cglm.} ## point using t by 𝐏(𝑡)=𝐀+𝑡𝐛
                                                                             ## param[in]  orig  origin of ray
                                                                             ## param[in]  dir   direction of ray
                                                                             ## param[in]  t     parameter
                                                                             ## param[out] point point at t