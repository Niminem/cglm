import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_vec2*(v: ptr UncheckedArray[cfloat], dest: var Vec2) {.cglm.} ## init vec2 using another vector
proc glm_vec2_copy*(a: Vec2, dest: var Vec2) {.cglm.} ## copy all members of [a] to [dest]
proc glm_vec2_zero*(v: var Vec2) {.cglm.} ## make vector zero
proc glm_vec2_one*(v: var Vec2) {.cglm.} ## make vector one
proc glm_vec2_dot*(a: Vec2, b: Vec2): cfloat {.cglm.} ## dot product of two vectors
proc glm_vec2_cross*(a: Vec2, b: Vec2): cfloat {.cglm.} ## cross product of two vectors (returns z component)
proc glm_vec2_norm2*(v: Vec2): cfloat {.cglm.} ## norm * norm (magnitude) of vec
                                               ## we can use this func instead of calling norm * norm, because it would call
                                               ## sqrtf function twice but with this func we can avoid func call, maybe this is
                                               ## not good name for this func
proc glm_vec2_norm*(v: Vec2): cfloat {.cglm.} ## norm (magnitude) of vec2
proc glm_vec2_add*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## add a vector to b vector store result in dest
proc glm_vec2_adds*(v: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## add scalar to v vector store result in dest (d = v + s)
proc glm_vec2_sub*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## subtract b vector from a vector store result in dest
proc glm_vec2_subs*(v: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## subtract scalar from v vector store result in dest (d = v - s)
proc glm_vec2_mul*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## multiply two vectors (component-wise multiplication)
proc glm_vec2_scale*(v: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## multiply/scale vector with scalar (result = v * s)
proc glm_vec2_scale_as*(v: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## scale vector as unit vector (result = unit(v) * s)
proc glm_vec2_div*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## div vector with another component-wise division: d = a / b
proc glm_vec2_divs*(v: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## div vector with scalar: d = v / s
proc glm_vec2_addadd*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## add two vectors and add result to sum
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec2_subadd*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## sub two vectors and add result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec2_muladd*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## mul two vectors and add result to dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec2_muladds*(a: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## mul vector with scalar and add result to sum
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec2_maxadd*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## add max of two vectors to result/dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec2_minadd*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## add min of two vectors to result/dest
                                                                 ## it applies += operator so dest must be initialized
proc glm_vec2_subsub*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## sub two vectors and sub result to dest
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec2_addsub*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## add two vectors and sub result to dest
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec2_mulsub*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## mul two vectors and sub result to dest
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec2_mulsubs*(a: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## mul vector with scalar and sub result to sum
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec2_maxsub*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## sub max of two vectors to result/dest
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec2_minsub*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## sub min of two vectors to result/dest
                                                                 ## it applies -= operator so dest must be initialized
proc glm_vec2_negate_to*(v: Vec2, dest: var Vec2) {.cglm.} ## negate vector components and store result in dest
proc glm_vec2_negate*(v: var Vec2) {.cglm.} ## negate vector components
proc glm_vec2_normalize*(v: var Vec2) {.cglm.} ## normalize vector and store result in same vec
proc glm_vec2_normalize_to*(v: Vec2, dest: var Vec2) {.cglm.} ## normalize vector to dest
proc glm_vec2_rotate*(v: Vec2, angle: cfloat, dest: var Vec2) {.cglm.} ## rotate vec2 around origin by angle (CCW: counterclockwise)
                                                                                 ## Formula:
                                                                                 ##   𝑥2 = cos(a)𝑥1 − sin(a)𝑦1
                                                                                 ##   𝑦2 = sin(a)𝑥1 + cos(a)𝑦1
                                                                                 ## @param[in]  v     vector to rotate
                                                                                 ## @param[in]  angle angle by radians
proc glm_vec2_center*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## find center point of two vector
proc glm_vec2_distance2*(a: Vec2, b: Vec2): cfloat {.cglm.} ## squared distance between two vectors
proc glm_vec2_distance*(a: Vec2, b: Vec2): cfloat {.cglm.} ## distance between two vectors
proc glm_vec2_maxv*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## max values of vectors
proc glm_vec2_minv*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## min values of vectors
proc glm_vec2_clamp*(v: var Vec2, minval: cfloat, maxval: cfloat) {.cglm.} ## clamp vector's individual members between min and max values
proc glm_vec2_swizzle*(v: Vec2, mask: cint, dest: var Vec2) {.cglm.} ## swizzle vector components (use GLM_SHUFFLE2 for mask)
proc glm_vec2_lerp*(fromV: Vec2, to: Vec2, t: cfloat, dest: var Vec2) {.cglm.} ## linear interpolation between two vector
                                                                                 ## formula:  from + s * (to - from)
                                                                                 ## @param[in]   from from value
                                                                                 ## @param[in]   to   to value
                                                                                 ## @param[in]   t    interpolant (amount) clamped between 0 and 1
proc glm_vec2_step*(edge: Vec2, x: Vec2, dest: var Vec2) {.cglm.} ## threshold function
                                                                                 ## @param[in]   edge    threshold
                                                                                 ## @param[in]   x       value to test against threshold
proc glm_vec2_make*(src: ptr UncheckedArray[cfloat], dest: var Vec2) {.cglm.} ## Create two dimensional vector from pointer of floats
proc glm_vec2_reflect*(v: Vec2, n: Vec2, dest: var Vec2) {.cglm.} ## reflection vector using an incident ray and a surface normal
                                                                                 ## @param[in]  v    incident vector
                                                                                 ## @param[in]  n    normalized normal vector
proc glm_vec2_refract*(v: Vec2, n: Vec2, eta: cfloat, dest: var Vec2): bool {.cglm.} ## computes refraction vector for an incident vector and a surface normal
                                                                                 ## calculates the refraction vector based on Snell's law. If total internal reflection
                                                                                 ## occurs (angle too great given eta), dest is set to zero and returns false.
                                                                                 ## Otherwise, computes refraction vector, stores it in dest, and returns true.
                                                                                 ## @param[in]  v    normalized incident vector
                                                                                 ## @param[in]  n    normalized normal vector
                                                                                 ## @param[in]  eta  ratio of indices of refraction (incident/transmitted)
                                                                                 ## @param[out] dest refraction vector if refraction occurs; zero vector otherwise
                                                                                 ## @returns true if refraction occurs; false if total internal reflection occurs.
proc glm_vec2_fill*(v: var Vec2, val: cfloat) {.cglm.} ## fill a vector with specified value
proc glm_vec2_eq*(v: Vec2, val: cfloat): bool {.cglm.} ## check if vector is equal to value (without epsilon)
proc glm_vec2_eq_eps*(v: Vec2, val: cfloat): bool {.cglm.} ## check if vector is equal to value (with epsilon)
proc glm_vec2_eq_all*(v: Vec2): bool {.cglm.} ## check if vector members are equal (without epsilon)
proc glm_vec2_eqv*(a: Vec2, b: Vec2): bool {.cglm.} ## check if vector is equal to another (without epsilon)
proc glm_vec2_eqv_eps*(a: Vec2, b: Vec2): bool {.cglm.} ## check if vector is equal to another (with epsilon)
proc glm_vec2_max*(v: Vec2): cfloat {.cglm.} ## max value of vector
proc glm_vec2_min*(v: Vec2): cfloat {.cglm.} ## min value of vector
proc glm_vec2_isnan*(v: Vec2): bool {.cglm.} ## check if one of items is NaN (not a number)
                                               ## you should only use this in DEBUG mode or very critical asserts
proc glm_vec2_isinf*(v: Vec2): bool {.cglm.} ## check if one of items is INFINITY
                                               ## you should only use this in DEBUG mode or very critical asserts
proc glm_vec2_isvalid*(v: Vec2): bool {.cglm.} ## check if all items are valid number
                                               ## you should only use this in DEBUG mode or very critical asserts
proc glm_vec2_sign*(v: Vec2, dest: var Vec2) {.cglm.} ## get sign of 32 bit float as +1, -1, 0
                                               ## Important: It returns 0 for zero/NaN input
proc glm_vec2_abs*(v: Vec2, dest: var Vec2) {.cglm.} ## absolute value of v
proc glm_vec2_fract*(v: Vec2, dest: var Vec2) {.cglm.} ## fractional part of each vector item
proc glm_vec2_floor*(v: Vec2, dest: var Vec2) {.cglm.} ## floor of each vector item
proc glm_vec2_mods*(v: Vec2, s: cfloat, dest: var Vec2) {.cglm.} ## mod of each vector item, result is written to dest (dest = v % s)
proc glm_vec2_sqrt*(v: Vec2, dest: var Vec2) {.cglm.} ## square root of each vector item
proc glm_vec2_complex_mul*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## treat vectors as complex numbers and multiply them as such.
                                                  ## @param[in]  a    left number
                                                  ## @param[in]  b    right number
proc glm_vec2_steps*(edge: cfloat, x: Vec2, dest: var Vec2) {.cglm.} ## threshold each vector item with scalar
                                                  ## condition is: (x[i] < edge) ? 0.0 : 1.0
                                                  ## @param[in]   edge    threshold
                                                  ## @param[in]   x       vector to test against threshold
proc glm_vec2_stepr*(edge: Vec2, x: cfloat, dest: var Vec2) {.cglm.} ## threshold a value with *vector* as the threshold
                                                  ## condition is: (x < edge[i]) ? 0.0 : 1.0
                                                  ## @param[in]   edge    threshold vector
                                                  ## @param[in]   x       value to test against threshold
proc glm_vec2_complex_div*(a: Vec2, b: Vec2, dest: var Vec2) {.cglm.} ## treat vectors as complex numbers and divide them as such.
                                                  ## @param[in]  a    left number (numerator)
                                                  ## @param[in]  b    right number (denominator)
proc glm_vec2_complex_conjugate*(a: Vec2, dest: var Vec2) {.cglm.} ## treat the vector as a complex number and conjugate it as such.
                                                  ## @param[in]  a    the number
                                                  ## @param[out] dest destination number