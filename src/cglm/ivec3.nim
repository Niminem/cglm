import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_ivec3*(v4: Ivec4, dest: var Ivec3) {.cglm.}
## init ivec3 using ivec4
## param[in]  v4   vector4
## param[out] dest destination

proc glm_ivec3_copy*(a: Ivec3, dest: var Ivec3) {.cglm.}
## copy all members of [a] to [dest]
## param[in]  a    source vector
## param[out] dest destination

proc glm_ivec3_zero*(v: var Ivec3) {.cglm.}
## set all members of [v] to zero
## param[out] v vector

proc glm_ivec3_one*(v: var Ivec3) {.cglm.}
## set all members of [v] to one
## param[out] v vector

proc glm_ivec3_dot*(a: Ivec3, b: Ivec3): cint {.cglm.}
## ivec3 dot product
## param[in] a vector1
## param[in] b vector2
## return dot product

proc glm_ivec3_norm2*(v: Ivec3): cint {.cglm.}
## norm * norm (magnitude) of vec
## we can use this func instead of calling norm * norm, because it would call
## sqrtf function twice but with this func we can avoid func call, maybe this is
## not good name for this func
## param[in] v vector
## return norm * norm

proc glm_ivec3_norm*(v: Ivec3): cint {.cglm.}
## euclidean norm (magnitude), also called L2 norm
## this will give magnitude of vector in euclidean space
## param[in] v vector
## return norm

proc glm_ivec3_add*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## add vector [a] to vector [b] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec3_adds*(v: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## add scalar s to vector [v] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec3_sub*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## subtract vector [b] from vector [a] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec3_subs*(v: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## subtract scalar s from vector [v] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec3_mul*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## multiply vector [a] with vector [b] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec3_scale*(v: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## multiply vector [v] with scalar [s] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec3_div*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## div vector with another component-wise division: d = a / b
## param[in]  a    vector 1
## param[in]  b    vector 2
## param[out] dest result = (a[0]/b[0], a[1]/b[1], a[2]/b[2])

proc glm_ivec3_divs*(v: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## div vector with scalar: d = v / s
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest result = (a[0]/s, a[1]/s, a[2]/s)

proc glm_ivec3_mod*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## Element-wise modulo operation on ivec3 vectors: dest = a % b
## Performs element-wise modulo on each component of vectors `a` and `b`.
## param[in] a    vector 1
## param[in] b    vector 2
## param[out] dest result = (a[0]%b[0], a[1]%b[1], a[2]%b[2])

proc glm_ivec3_addadd*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## add vector [a] with vector [b] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a + b)

proc glm_ivec3_addadds*(a: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## add scalar [s] onto vector [a] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a + s)

proc glm_ivec3_subadd*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## subtract vector [a] from vector [b] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a - b)

proc glm_ivec3_subadds*(a: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## subtract scalar [s] from vector [a] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a - s)

proc glm_ivec3_muladd*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## multiply vector [a] with vector [b] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a * b)

proc glm_ivec3_muladds*(a: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## multiply vector [a] with scalar [s] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a * s)

proc glm_ivec3_maxadd*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## add maximum of vector [a] and vector [b] to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += max(a, b)

proc glm_ivec3_minadd*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## add minimum of vector [a] and vector [b] to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += min(a, b)

proc glm_ivec3_subsub*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## subtract vector [a] from vector [b] and subtract result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= (a - b)

proc glm_ivec3_subsubs*(a: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## subtract scalar [s] from vector [a] and subtract result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a - s)

proc glm_ivec3_addsub*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## add vector [a] to vector [b] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  b    vector
## param[out] dest dest -= (a + b)

proc glm_ivec3_addsubs*(a: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## add scalar [s] to vector [a] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a + s)

proc glm_ivec3_mulsub*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## multiply vector [a] and vector [b] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  b    vector
## param[out] dest dest -= (a * b)

proc glm_ivec3_mulsubs*(a: Ivec3, s: cint, dest: var Ivec3) {.cglm.}
## multiply vector [a] with scalar [s] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a * s)

proc glm_ivec3_maxsub*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## subtract maximum of vector [a] and vector [b] from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= max(a, b)

proc glm_ivec3_minsub*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## subtract minimum of vector [a] and vector [b] from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= min(a, b)

proc glm_ivec3_distance2*(a: Ivec3, b: Ivec3): cint {.cglm.}
## squared distance between two vectors
## param[in] a first vector
## param[in] b second vector
## return returns squared distance (distance * distance)

proc glm_ivec3_distance*(a: Ivec3, b: Ivec3): cfloat {.cglm.}
## distance between two vectors
## param[in] a first vector
## param[in] b second vector
## return returns distance

proc glm_ivec3_fill*(v: var Ivec3, val: cint) {.cglm.}
## fill a vector with specified value
## param[out] v   dest
## param[in]  val value

proc glm_ivec3_eq*(v: Ivec3, val: cint): bool {.cglm.}
## check if vector is equal to value
## param[in] v   vector
## param[in] val value

proc glm_ivec3_eqv*(a: Ivec3, b: Ivec3): bool {.cglm.}
## check if vector is equal to another
## param[in] a vector
## param[in] b vector

proc glm_ivec3_maxv*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## set each member of dest to greater of vector a and b
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec3_minv*(a: Ivec3, b: Ivec3, dest: var Ivec3) {.cglm.}
## set each member of dest to lesser of vector a and b
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec3_clamp*(v: var Ivec3, minVal: cint, maxVal: cint) {.cglm.}
## clamp each member of [v] between minVal and maxVal (inclusive)
## param[in, out] v      vector
## param[in]      minVal minimum value
## param[in]      maxVal maximum value

proc glm_ivec3_abs*(v: Ivec3, dest: var Ivec3) {.cglm.}
## absolute value of v
## param[in]	v	vector
## param[out]	dest	destination