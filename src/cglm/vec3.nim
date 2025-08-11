import base, common

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

const
    GLM_YUP*: Vec3 = [cfloat 0.0, 1.0, 0.0]
    GLM_ZUP*: Vec3 = [cfloat 0.0, 0.0, 1.0]
    GLM_XUP*: Vec3 = [cfloat 1.0, 0.0, 0.0]
    GLM_FORWARD*: Vec3 = [cfloat 0.0, 0.0, -1.0]

const
    GLM_XXX* = GLM_SHUFFLE3(0, 0, 0)
    GLM_YYY* = GLM_SHUFFLE3(1, 1, 1)
    GLM_ZZZ* = GLM_SHUFFLE3(2, 2, 2)
    GLM_ZYX* = GLM_SHUFFLE3(0, 1, 2)

# wrapping cglm functions to Nim (comments below are from cglm source code)
proc glm_vec3*(v4: Vec4; dest: var Vec3) {.cglm.} ## init vec3 using vec4
proc glm_vec3_copy*(a: Vec3; dest: var Vec3) {.cglm.} ## copy all memebers of [a] to [dest]
proc glm_vec3_zero*(v: var Vec3) {.cglm.} ## make vector zero
proc glm_vec3_one*(v: var Vec3) {.cglm.} ## make vector one
proc glm_vec3_dot*(a: Vec3; b: Vec3): cfloat {.cglm.} ## vec3 dot product
proc glm_vec3_norm2*(v: Vec3): cfloat {.cglm.} ## norm * norm (magnitude) of vec
                                               ## we can use this func instead of calling norm * norm, because it would call
                                               ## sqrtf function twice but with this func we can avoid func call, maybe this is
                                               ## not good name for this func
proc glm_vec3_norm*(v: Vec3): cfloat {.cglm.} ## euclidean norm (magnitude), also called L2 norm
                                               ## this will give magnitude of vector in euclidean space
proc glm_vec3_norm_one*(v: Vec3): cfloat {.cglm.} ## L1 norm of vec3
                                               ## Also known as Manhattan Distance or Taxicab norm.
                                               ## L1 Norm is the sum of the magnitudes of the vectors in a space.
                                               ## It is calculated as the sum of the absolute values of the vector components.
                                               ## In this norm, all the components of the vector are weighted equally.
                                               ## This computes:
                                               ## R = |v[0]| + |v[1]| + |v[2]|
proc glm_vec3_norm_inf*(v: Vec3): cfloat {.cglm.} ## infinity norm of vec3
                                                 ## Also known as Maximum norm.
                                                 ## Infinity Norm is the largest magnitude among each element of a vector.
                                                 ## It is calculated as the maximum of the absolute values of the vector components.
                                                 ## This computes:
                                                 ## inf norm = max(|v[0]|, |v[1]|, |v[2]|)
proc glm_vec3_add*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## add a vector to b vector store result in dest
proc glm_vec3_adds*(v: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## add scalar to v vector store result in dest (d = v + s)
proc glm_vec3_sub*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## subtract b vector from a vector store result in dest
proc glm_vec3_subs*(v: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## subtract scalar from v vector store result in dest (d = v - s)
proc glm_vec3_mul*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## multiply two vectors (component-wise multiplication)
proc glm_vec3_scale*(v: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## multiply/scale vec3 vector with scalar: result = v * s
proc glm_vec3_scale_as*(v: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## make vec3 vector scale as specified: result = unit(v) * s
proc glm_vec3_div*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## div vector with another component-wise division: d = a / b
proc glm_vec3_divs*(v: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## div vector with scalar: d = v / s
proc glm_vec3_addadd*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## add two vectors and add result to sum
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_subadd*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## sub two vectors and add result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_muladd*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## mul two vectors and add result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_muladds*(a: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## mul vector with scalar and add result to sum
                                                                   ## it applies += operator so dest must be initialized
proc glm_vec3_maxadd*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## add max of two vectors to result/dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_minadd*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## add min of two vectors to result/dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_subsub*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## sub two vectors and sub result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_addsub*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## add two vectors and sub result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec3_mulsub*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## mul two vectors and sub result to dest
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec3_mulsubs*(a: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## mul vector with scalar and sub result to dest
                                                                   ## it applies -= operator so dest must be initialized
proc glm_vec3_maxsub*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## sub max of two vectors to result/dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec3_minsub*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## sub min of two vectors to result/dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec3_negate_to*(v: Vec3; dest: var Vec3) {.cglm.} ## negate vector components and store result in dest
proc glm_vec3_negate*(v: var Vec3) {.cglm.} ## negate vector components
proc glm_vec3_normalize*(v: var Vec3) {.cglm.} ## normalize vec3 and store result in same vec
proc glm_vec3_normalize_to*(v: Vec3; dest: var Vec3) {.cglm.} ## normalize vec3 to dest
proc glm_vec3_cross*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## cross product of two vector (RH)
proc glm_vec3_crossn*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## cross product of two vector (RH) and normalize the result
proc glm_vec3_angle*(a: Vec3; b: Vec3): cfloat {.cglm.} ## angle between two vector (returns angle in radians
proc glm_vec3_rotate*(v: var Vec3; angle: cfloat; axis: Vec3) {.cglm.} ## rotate vec3 around axis by angle using Rodrigues' rotation formula
proc glm_vec3_rotate_m4*(m: Mat4; v: Vec3; dest: var Vec3) {.cglm.} ## apply rotation matrix to vector
                                                                    ## matrix format should be (no perspective):
                                                                    ## a  b  c  x
                                                                    ## e  f  g  y
                                                                    ## i  j  k  z
                                                                    ## 0  0  0  w
proc glm_vec3_rotate_m3*(m: Mat3; v: Vec3; dest: var Vec3) {.cglm.} ## apply rotation matrix to vector
proc glm_vec3_proj*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## project a vector onto b vector
proc glm_vec3_center*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## find center point of two vector
proc glm_vec3_distance2*(a: Vec3; b: Vec3): cfloat {.cglm.} ## squared distance between two vectors
proc glm_vec3_distance*(a: Vec3; b: Vec3): cfloat {.cglm.} ## distance between two vectors
proc glm_vec3_maxv*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## max values of vectors
proc glm_vec3_minv*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## min values of vectors
proc glm_vec3_ortho*(v: Vec3; dest: var Vec3) {.cglm.} ## find orthogonal/perpendicular vector
                                                       ## v: vector, dest: orthogonal/perpendicular vector
proc glm_vec3_clamp*(v: var Vec3; minVal: cfloat; maxVal: cfloat) {.cglm.} ## clamp vector's individual members between min and max values
proc glm_vec3_lerp*(fromV: Vec3; to: Vec3; t: cfloat; dest: var Vec3) {.cglm.} ## linear interpolation between two vectors (t is interpolant / amount)
                                                                               ## formula:  from + s * (to - from)
proc glm_vec3_lerpc*(fromV: Vec3; to: Vec3; t: cfloat; dest: var Vec3) {.cglm.} ## linear interpolation between two vectors (clamped)
                                                                                 ## formula:  from + s * (to - from)
                                                                                 ## t (interpolant) is clamped between 0 and 1
proc glm_vec3_mix*(fromV: Vec3; to: Vec3; t: cfloat; dest: var Vec3) {.cglm.} ## linear interpolation between two vectors
                                                                               ## formula:  from + s * (to - from)
proc glm_vec3_mixc*(fromV: Vec3; to: Vec3; t: cfloat; dest: var Vec3) {.cglm.} ## linear interpolation between two vectors (clamped)
                                                                                 ## formula:  from + s * (to - from)
                                                                                 ## t (interpolant) is clamped between 0 and 1
proc glm_vec3_step*(edge: Vec3; x: Vec3; dest: var Vec3) {.cglm.} ## threshold function (x is value to test against threshold, edge is threshold value)
proc glm_vec3_smoothstep_uni*(edge0: cfloat; edge1: cfloat; x: Vec3; dest: var Vec3) {.cglm.} ## threshold function with a smooth transition (unidimensional)
                                                                                              ## edge0: low threshold, edge1: high threshold, x: value to test against threshold
proc glm_vec3_smoothstep*(edge0: Vec3; edge1: Vec3; x: Vec3; dest: var Vec3) {.cglm.} ## threshold function with a smooth transition
                                                                                 ## edge0: low threshold, edge1: high threshold, x: value to test against threshold
proc glm_vec3_smoothinterp*(fromV: Vec3; to: Vec3; t: cfloat; dest: var Vec3) {.cglm.} ## smooth Hermite interpolation between two vectors (t is interpolant / amount)
                                                                                       ## formula:  from + s * (to - from)
proc glm_vec3_smoothinterpc*(fromV: Vec3; to: Vec3; t: cfloat; dest: var Vec3) {.cglm.} ## smooth Hermite interpolation between two vectors (clamped)
                                                                                         ## formula:  from + s * (to - from)
                                                                                         ## t (interpolant) is clamped between 0 and 1
proc glm_vec3_swizzle*(v: Vec3; mask: cint; dest: var Vec3) {.cglm.} ## swizzle vector components (you can use existing masks e.g. GLM_XXX, GLM_ZYX)
proc glm_cross*(a: Vec3; b: Vec3; dest: var Vec3) {.cglm.} ## vec3 cross product (this is just convenient wrapper)
proc glm_dot*(a: Vec3; b: Vec3): cfloat {.cglm.} ## vec3 dot product (this is just convenient wrapper)
proc glm_normalize*(v: var Vec3) {.cglm.} ## normalize vec3 and store result in same vec (this is just convenient wrapper)
proc glm_normalize_to*(v: Vec3; dest: var Vec3) {.cglm.} ## normalize vec3 to dest (this is just convenient wrapper)
proc glm_vec3_make*(src: ptr UncheckedArray[cfloat]; dest: var Vec3) {.cglm.} ## create three dimensional vector from pointer
proc glm_vec3_faceforward*(n: Vec3; v: Vec3; nref: Vec3; dest: var Vec3) {.cglm.} ## a vector pointing in the same direction as another
                                                                                  ## orients a vector to point away from a surface as defined by its normal
                                                                                  ## n: vector to orient, v: incident vector, nref: reference vector, dest: oriented vector, pointing away from the surface
proc glm_vec3_reflect*(v: Vec3; n: Vec3; dest: var Vec3) {.cglm.} ## reflection vector using an incident ray and a surface normal (v: incident vector, n: normalized normal vector)
proc glm_vec3_refract*(v: Vec3; n: Vec3; eta: cfloat; dest: var Vec3): bool {.cglm.} ## computes refraction vector for an incident vector and a surface normal.
                                                                                  ## calculates the refraction vector based on Snell's law. If total internal reflection
                                                                                  ## occurs (angle too great given eta), dest is set to zero and returns false.
                                                                                  ## Otherwise, computes refraction vector, stores it in dest, and returns true.
                                                                                  ## v: normalized incident vector, n: normalized normal vector
                                                                                  ## eta: ratio of indices of refraction (incident/transmitted)
                                                                                  ## dest: refraction vector if refraction occurs; zero vector otherwise
                                                                                  ## returns true if refraction occurs; false if total internal reflection occurs.
proc glm_vec3_broadcast*(val: cfloat; dest: var Vec3) {.cglm.} ## fill a vector with specified value
proc glm_vec3_fill*(v: var Vec3; val: cfloat) {.cglm.} ## fill a vector with specified value
proc glm_vec3_eq*(a: Vec3; b: Vec3): bool {.cglm.} ## check if two vectors are equal (without epsilon)
proc glm_vec3_eq_eps*(a: Vec3; b: Vec3): bool {.cglm.} ## check if two vectors are equal (with epsilon)
proc glm_vec3_eq_all*(v: Vec3; val: cfloat): bool {.cglm.} ## check if vector members are equal (without epsilon)
proc glm_vec3_eqv*(a: Vec3; b: Vec3): bool {.cglm.} ## check if vector is equal to another (without epsilon)
proc glm_vec3_eqv_eps*(a: Vec3; b: Vec3): bool {.cglm.} ## check if vector is equal to another (with epsilon)
proc glm_vec3_max*(v: Vec3): cfloat {.cglm.} ## max value of vector
proc glm_vec3_min*(v: Vec3): cfloat {.cglm.} ## min value of vector
proc glm_vec3_isnan*(v: Vec3): bool {.cglm.} ## check if one of items is NaN (not a number) [you should only use this in DEBUG mode or very critical asserts]
proc glm_vec3_isinf*(v: Vec3): bool {.cglm.} ## check if one of items is INFINITY [you should only use this in DEBUG mode or very critical asserts]
proc glm_vec3_isvalid*(v: Vec3): bool {.cglm.} ## check if all items are valid number [you should only use this in DEBUG mode or very critical asserts]
proc glm_vec3_sign*(v: Vec3; dest: var Vec3) {.cglm.} ## get sign of 32 bit float as +1, -1, 0 (Important: It returns 0 for zero/NaN input)
proc glm_vec3_abs*(v: Vec3; dest: var Vec3) {.cglm.} ## absolute value of each vector item
proc glm_vec3_fract*(v: Vec3; dest: var Vec3) {.cglm.} ## fractional part of each vector item
proc glm_vec3_floor*(v: Vec3; dest: var Vec3) {.cglm.} ## floor of each vector item
proc glm_vec3_mods*(v: Vec3; s: cfloat; dest: var Vec3) {.cglm.} ## mod of each vector item, result is written to dest (dest = v % s)
proc glm_vec3_steps*(edge: cfloat; x: Vec3; dest: var Vec3) {.cglm.} ## threshold each vector item with scalar (condition is: (x[i] < edge) ? 0.0 : 1.0)
                                                                     ## edge: threshold, x: vector to test against threshold
proc glm_vec3_stepr*(edge: Vec3; x: cfloat; dest: var Vec3) {.cglm.} ## threshold a value with vector as the threshold
                                                                     ## condition is: (x < edge[i]) ? 0.0 : 1.0
                                                                     ## edge: threshold vector, x: value to test against threshold
proc glm_vec3_hadd*(v: Vec3): cfloat {.cglm.} ## vector reduction by summation (warning: could overflow) - returns sum of all vector's elements
proc glm_vec3_sqrt*(v: Vec3; dest: var Vec3) {.cglm.} ## square root of each vector item