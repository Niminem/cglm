import base, common

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

const GLM_XXXX* = GLM_SHUFFLE4(0, 0, 0, 0)
const GLM_YYYY* = GLM_SHUFFLE4(1, 1, 1, 1)
const GLM_ZZZZ* = GLM_SHUFFLE4(2, 2, 2, 2)
const GLM_WWWW* = GLM_SHUFFLE4(3, 3, 3, 3)
const GLM_WZYX* = GLM_SHUFFLE4(0, 1, 2, 3)

proc glm_vec4*(v3: Vec3; last: cfloat; dest: var Vec4) {.cglm.} ## init vec4 using vec3
proc glm_vec4_copy3*(a: Vec4; dest: var Vec3) {.cglm.} ## copy first 3 members of [a] to [dest]
proc glm_vec4_copy*(v: Vec4; dest: var Vec4) {.cglm.} ## copy all members of [a] to [dest]
proc glm_vec4_ucopy*(v: Vec4; dest: var Vec4) {.cglm.} ## copy all members of [a] to [dest] (alignment is not required)
proc glm_vec4_zero*(v: var Vec4) {.cglm.} ## make vector zero
proc glm_vec4_one*(v: var Vec4) {.cglm.} ## make vector one
proc glm_vec4_dot*(a: Vec4; b: Vec4): cfloat {.cglm.}  ## vec4 dot product
proc glm_vec4_norm2*(v: Vec4): cfloat {.cglm.} ## norm * norm (magnitude) of vec
                                              ## we can use this func instead of calling norm * norm, because it would call
                                              ## sqrtf function twice but with this func we can avoid func call, maybe this is
                                              ## not good name for this func
proc glm_vec4_norm*(v: Vec4): cfloat {.cglm.} ## euclidean norm (magnitude), also called L2 norm
                                              ## this will give magnitude of vector in euclidean space
proc glm_vec4_norm_one*(v: Vec4): cfloat {.cglm.} ## L1 norm of vec4, also known as Manhattan Distance or Taxicab norm
                                                  ## L1 Norm is the sum of the magnitudes of the vectors in a space
                                                  ## it is calculated as the sum of the absolute values of the vector components
                                                  ## in this norm, all the components of the vector are weighted equally
                                                  ## this computes:
                                                  ## L1 norm = |v[0]| + |v[1]| + |v[2]| + |v[3]|
proc glm_vec4_norm_inf*(v: Vec4): cfloat {.cglm.} ## infinity norm of vec4, also known as Maximum norm
                                                      ## Infinity Norm is the largest magnitude among each element of a vector
                                                      ## it is calculated as the maximum of the absolute values of the vector components
                                                      ## this computes:
                                                      ## inf norm = max(|v[0]|, |v[1]|, |v[2]|, |v[3]|)
proc glm_vec4_add*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## add b vector to a vector store result in dest
proc glm_vec4_adds*(v: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## add scalar to v vector store result in dest (d = v + vec(s))
proc glm_vec4_sub*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## subtract b vector from a vector store result in dest (d = a - b)
proc glm_vec4_subs*(v: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## subtract scalar from v vector store result in dest (d = v - vec(s))
proc glm_vec4_mul*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## multiply two vectors (component-wise multiplication)
proc glm_vec4_scale*(v: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## multiply/scale vec4 vector with scalar: result = v * s
proc glm_vec4_scale_as*(v: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## make vec4 vector scale as specified: result = unit(v) * s
proc glm_vec4_div*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## divide two vectors (component-wise division): d = a / b
proc glm_vec4_divs*(v: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## divide vec4 vector with scalar: d = v / s
proc glm_vec4_addadd*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## add two vectors and add result to sum
proc glm_vec4_subadd*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## sub two vectors and add result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec4_muladd*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## multiply two vectors and add result to dest
                                                                 ## it applies += operator so dest must be initialized

proc glm_vec4_muladds*(a: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## multiply vector with scalar and add result to sum
                                                                    ## it applies += operator so dest must be initialized
proc glm_vec4_maxadd*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## add max of two vectors to result/dest
                                                                    ## it applies += operator so dest must be initialized
proc glm_vec4_minadd*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## add min of two vectors to result/dest
                                                                    ## it applies += operator so dest must be initialized
proc glm_vec4_subsub*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## sub two vectors and sub result to dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec4_addsub*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## add two vectors and sub result to dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec4_mulsub*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## multiply two vectors and sub result to dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec4_mulsubs*(a: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## multiply vector with scalar and sub result to dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec4_maxsub*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## sub max of two vectors to dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec4_minsub*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## sub min of two vectors to dest
                                                                    ## it applies -= operator so dest must be initialized
proc glm_vec4_negate*(v: Vec4; dest: var Vec4) {.cglm.} ## negate vector components and store result in dest
proc glm_vec4_negate*(v: var Vec4) {.cglm.} ## flip sign of all vec4 members
proc glm_vec4_normalize*(v: Vec4; dest: var Vec4) {.cglm.} ## normalize vec4 to dest
proc glm_vec4_normalize*(v: var Vec4) {.cglm.} ## normalize vec4 and store result in same vec
proc glm_vec4_distance*(a: Vec4; b: Vec4): cfloat {.cglm.} ## distance between two vectors
proc glm_vec4_distance2*(a: Vec4; b: Vec4): cfloat {.cglm.} ## squared distance between two vectors
proc glm_vec4_maxv*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## max values of two vectors
proc glm_vec4_minv*(a: Vec4; b: Vec4; dest: var Vec4) {.cglm.} ## min values of two vectors
proc glm_vec4_clamp*(v: var Vec4; minVal: cfloat; maxVal: cfloat) {.cglm.} ## clamp vector's individual members between min and max values
proc glm_vec4_lerp*(fromV: Vec4; toV: Vec4; t: cfloat; dest: var Vec4) {.cglm.} ## linear interpolation between two vectors
proc glm_vec4_lerpc*(fromV: Vec4; toV: Vec4; t: cfloat; dest: var Vec4) {.cglm.} ## linear interpolation between two vectors (clamped)
proc glm_vec4_mix*(fromV: Vec4; toV: Vec4; t: cfloat; dest: var Vec4) {.cglm.} ## linear interpolation between two vectors
proc glm_vec4_mixc*(fromV: Vec4; toV: Vec4; t: cfloat; dest: var Vec4) {.cglm.} ## linear interpolation between two vectors (clamped)
proc glm_vec4_step*(edge: Vec4; x: Vec4; dest: var Vec4) {.cglm.} ## threshold function (edge: threshold, x: value to test against threshold)
proc glm_vec4_smoothstep_uni*(edge0: cfloat; edge1: cfloat; x: Vec4; dest: var Vec4) {.cglm.} ## smoothstep function (unidimensional)
                                                                                              ## edge0: low threshold, edge1: high threshold, x: value to test against threshold
proc glm_vec4_smoothstep*(edge0: Vec4; edge1: Vec4; x: Vec4; dest: var Vec4) {.cglm.} ## smoothstep function (multidimensional)
                                                                                                ## edge0: low threshold, edge1: high threshold, x: value to test against threshold
proc glm_vec4_smoothinterp*(fromV: Vec4; toV: Vec4; t: cfloat; dest: var Vec4) {.cglm.} ## smooth Hermite interpolation between two vectors
                                                                                        ## formula: t^2 * (3 - 2*t)
                                                                                        ## fromV: from value, toV: to value, t: interpolant (amount)
proc glm_vec4_smoothinterpc*(fromV: Vec4; toV: Vec4; t: cfloat; dest: var Vec4) {.cglm.} ## smooth Hermite interpolation between two vectors (clamped)
                                                                                              ## formula: t^2 * (3 - 2*t)
                                                                                              ## fromV: from value, toV: to value, t: interpolant (amount) clamped between 0 and 1
proc glm_vec4_cubic*(s: cfloat; dest: var Vec4) {.cglm.} ## helper to fill vec4 as [S^3, S^2, S, 1]
                                                         ## s: parameter
proc glm_vec4_swizzle*(v: Vec4; mask: cint; dest: var Vec4) {.cglm.} ## swizzle vector components using mask
                                                                 ## you can use existing masks e.g. GLM_XXXX, GLM_WZYX
proc glm_vec4_make*(src: ptr UncheckedArray[cfloat]; dest: var Vec4) {.cglm.} ## create vec4 from pointer to array of floats
                                                              ## src: pointer to array of floats
proc glm_vec4_reflect*(v: Vec4; n: Vec4; dest: var Vec4) {.cglm.} ## reflection vector using an incident ray and a surface normal
                                                                      ## v: incident vector, n: normalized normal vector
proc glm_vec4_refract*(v: Vec4; n: Vec4; eta: cfloat; dest: var Vec4): bool {.cglm.} ## computes refraction vector for an incident vector and a surface normal
                                                                                      ## calculates the refraction vector based on Snell's law. If total internal reflection
                                                                                      ## occurs (angle too great given eta), dest is set to zero and returns false.
                                                                                      ## Otherwise, computes refraction vector, stores it in dest, and returns true.
                                                                                      ## 
                                                                                      ## this implementation does not explicitly preserve the 'w' component of the
                                                                                      ## incident vector 'I' in the output 'dest', users requiring the preservation of
                                                                                      ## the 'w' component should manually adjust 'dest' after calling this function.
                                                                                      ## v: normalized incident vector, n: normalized normal vector,
                                                                                      ## eta: ratio of indices of refraction (incident/transmitted), dest: refraction vector if refraction occurs; zero vector otherwise
                                                                                      ## returns true if refraction occurs; false if total internal reflection occurs.
proc glm_vec4_broadcast*(val: cfloat; dest: var Vec4) {.cglm.} ## fill vector with specified value
proc glm_vec4_fill*(v: var Vec4; val: cfloat) {.cglm.} ## fill vector with specified value
proc glm_vec4_eq*(v: Vec4; val: cfloat): bool {.cglm.} ## check if vector is equal to value (without epsilon)
proc glm_vec4_eps*(v: Vec4; val: cfloat; eps: cfloat): bool {.cglm.} ## check if vector is equal to value (with epsilon)
proc glm_vec4_eq_all*(v: Vec4): bool {.cglm.} ## check if all vector members are equal (without epsilon)
proc glm_vec4_eqv*(a: Vec4; b: Vec4): bool {.cglm.} ## check if vector is equal to another (without epsilon)
proc glm_vec4_eqv_eps*(a: Vec4; b: Vec4): bool {.cglm.} ## check if vector is equal to another (with epsilon)
proc glm_vec4_max*(v: Vec4): cfloat {.cglm.} ## max value of vector
proc glm_vec4_min*(v: Vec4): cfloat {.cglm.} ## min value of vector
proc glm_vec4_isnan*(v: Vec4): bool {.cglm.} ## check if one of items is NaN (not a number)
                                             ## you should only use this in DEBUG mode or very critical asserts
proc glm_vec4_isinf*(v: Vec4): bool {.cglm.} ## check if one of items is INFINITY
                                             ## you should only use this in DEBUG mode or very critical asserts
proc glm_vec4_isvalid*(v: Vec4): bool {.cglm.} ## check if all items are valid number
                                               ## you should only use this in DEBUG mode or very critical asserts
proc glm_vec4_sign*(v: Vec4; dest: var Vec4) {.cglm.} ## get sign of each vector member as +1, -1, 0
                                                        ## it returns 0 for zero/NaN input
proc glm_vec4_abs*(v: Vec4; dest: var Vec4) {.cglm.} ## absolute value of each vector item
proc glm_vec4_fract*(v: Vec4; dest: var Vec4) {.cglm.} ## fractional part of each vector item
proc glm_vec4_floor*(v: Vec4; dest: var Vec4) {.cglm.} ## floor of each vector item
proc glm_vec4_mods*(v: Vec4; s: cfloat; dest: var Vec4) {.cglm.} ## mod of each vector item with scalar
                                                        ## result is written to dest (dest = v % s)
proc glm_vec4_steps*(edge: cfloat; x: Vec4; dest: var Vec4) {.cglm.} ## threshold each vector item with scalar
                                                        ## condition is: (x[i] < edge) ? 0.0 : 1.0
                                                        ## edge: threshold, x: vector to test against threshold, dest: destination
proc glm_vec4_stepr*(edge: Vec4; x: Vec4; dest: var Vec4) {.cglm.} ## threshold each vector item with another vector as the threshold
                                                        ## condition is: (x[i] < edge[i]) ? 0.0 : 1.0
                                                        ## edge: threshold vector, x: vector to test against threshold, dest: destination
proc glm_vec4_hadd*(v: Vec4): cfloat {.cglm.} ## vector reduction by summation
                                              ## warning: could overflow
                                              ## v: vector to reduce, returns sum of all vector's elements
proc glm_vec4_sqrt*(v: Vec4; dest: var Vec4) {.cglm.} ## square root of each vector item