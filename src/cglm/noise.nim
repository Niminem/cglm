import base

## /* ============================================================================
##  * Classic perlin noise
##  * ============================================================================
##  */

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_perlin_vec4*(point: Vec4): cfloat {.cglm.}
## Classic perlin noise
## param[in] point 4D vector
## returns perlin noise value

proc glm_perlin_vec3*(point: Vec3): cfloat {.cglm.}
## Classic perlin noise
## param[in] point 3D vector
## returns perlin noise value

proc glm_perlin_vec2*(point: Vec2): cfloat {.cglm.}
## Classic perlin noise
## param[in] point 2D vector
## returns perlin noise value