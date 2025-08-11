import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_ivec2*(v: ptr UncheckedArray[cint]; dest: var Ivec2) {.cglm.}
## init ivec2 using vec3 or vec4
## param[in]  v    vector
## param[out] dest destination

proc glm_ivec2_copy*(a: Ivec2; dest: var Ivec2) {.cglm.}
## copy all members of [a] to [dest]
## param[in]  a    source vector
## param[out] dest destination

proc glm_ivec2_zero*(v: var Ivec2) {.cglm.}
## set all members of [v] to zero
## param[out] v vector

proc glm_ivec2_one*(v: var Ivec2) {.cglm.}
## set all members of [v] to one
## param[out] v vector

proc glm_ivec2_dot*(a: Ivec2; b: Ivec2): cint {.cglm.}
## ivec2 dot product
## param[in] a vector1
## param[in] b vector2
## return dot product

proc glm_ivec2_cross*(a: Ivec2; b: Ivec2): cint {.cglm.}
## ivec2 cross product
## REF: http://allenchou.net/2013/07/cross-product-of-2d-vectors/
## param[in]  a vector1
## param[in]  b vector2
## return Z component of cross product

proc glm_ivec2_add*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## add vector [a] to vector [b] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec2_adds*(v: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## add scalar s to vector [v] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec2_sub*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## subtract vector [b] from vector [a] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec2_subs*(v: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## subtract scalar s from vector [v] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec2_mul*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## multiply vector [a] with vector [b] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec2_scale*(v: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## multiply vector [v] with scalar [s] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec2_div*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## div vector with another component-wise division: d = a / b
## param[in]  a    vector 1
## param[in]  b    vector 2
## param[out] dest result = (a[0]/b[0], a[1]/b[1])

proc glm_ivec2_divs*(v: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## div vector with scalar: d = v / s
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest result = (a[0]/s, a[1]/s)

proc glm_ivec2_mod*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## mod vector with another component-wise modulo: d = a % b
## param[in]  a    vector 1
## param[in]  b    vector 2
## param[out] dest result = (a[0]%b[0], a[1]%b[1])

proc glm_ivec2_addadd*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## add vector [a] with vector [b] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a + b)

proc glm_ivec2_addadds*(a: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## add scalar [s] onto vector [a] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a + s)

proc glm_ivec2_subadd*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## subtract vector [a] from vector [b] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a - b)

proc glm_ivec2_subadds*(a: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## subtract scalar [s] from vector [a] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a - s)

proc glm_ivec2_muladd*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## multiply vector [a] with vector [b] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a * b)

proc glm_ivec2_muladds*(a: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## multiply vector [a] with scalar [s] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a * s)

proc glm_ivec2_maxadd*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## add maximum of vector [a] and vector [b] to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += max(a, b)

proc glm_ivec2_minadd*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## add minimum of vector [a] and vector [b] to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += min(a, b)

proc glm_ivec2_subsub*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## subtract vector [a] from vector [b] and subtract result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= (a - b)

proc glm_ivec2_subsubs*(a: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## subtract scalar [s] from vector [a] and add result to [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a - s)

proc glm_ivec2_addsub*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## add vector [a] to vector [b] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  b    vector
## param[out] dest dest -= (a + b)

proc glm_ivec2_addsubs*(a: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## add scalar [s] to vector [a] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a + s)

proc glm_ivec2_mulsub*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## multiply vector [a] and vector [b] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  b    vector
## param[out] dest dest -= (a * b)

proc glm_ivec2_mulsubs*(a: Ivec2; s: cint; dest: var Ivec2) {.cglm.}
## multiply vector [a] with scalar [s] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a * s)

proc glm_ivec2_maxsub*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## subtract maximum of vector [a] and vector [b] from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= max(a, b)

proc glm_ivec2_minsub*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## subtract minimum of vector [a] and vector [b] from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= min(a, b)

proc glm_ivec2_distance2*(a: Ivec2; b: Ivec2): cint {.cglm.}
## squared distance between two vectors
## param[in]  a    first vector
## param[in]  b    second vector
## return returns squared distance (distance * distance)

proc glm_ivec2_distance*(a: Ivec2; b: Ivec2): cfloat {.cglm.}
## distance between two vectors
## param[in]  a    first vector
## param[in]  b    second vector
## return returns distance

proc glm_ivec2_fill*(v: var Ivec2; val: cint) {.cglm.}
## fill a vector with specified value
## param[out] v   dest
## param[in]  val value

proc glm_ivec2_eq*(v: Ivec2; val: cint): bool {.cglm.}
## check if vector is equal to value
## param[in]  v   vector
## param[in]  val value

proc glm_ivec2_eqv*(a: Ivec2; b: Ivec2): bool {.cglm.}
## check if vector is equal to another
## param[in]  a   first vector
## param[in]  b   second vector

proc glm_ivec2_maxv*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## set each member of dest to greater of vector a and b
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec2_minv*(a: Ivec2; b: Ivec2; dest: var Ivec2) {.cglm.}
## set each member of dest to lesser of vector a and b
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec2_clamp*(v: var Ivec2; minVal: cint; maxVal: cint) {.cglm.}
## clamp each member of [v] between minVal and maxVal (inclusive)
## param[in, out] v      vector
## param[in]      minVal minimum value
## param[in]      maxVal maximum value

proc glm_ivec2_abs*(v: Ivec2; dest: var Ivec2) {.cglm.}
## absolute value of v
## param[in]  v      vector
## param[out] dest   destination