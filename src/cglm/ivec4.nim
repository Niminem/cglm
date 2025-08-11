import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_ivec4*(v3: Ivec3, last: cint, dest: var Ivec4) {.cglm.}
## init ivec4 using ivec3
## param[in]  v3   vector3
## param[in]  last last item
## param[out] dest destination

proc glm_ivec4_copy*(a: Ivec4, dest: var Ivec4) {.cglm.}
## copy all members of [a] to [dest]
## param[in]  a    source vector
## param[out] dest destination

proc glm_ivec4_zero*(v: var Ivec4) {.cglm.}
## set all members of [v] to zero
## param[out] v vector

proc glm_ivec4_one*(v: var Ivec4) {.cglm.}
## set all members of [v] to one
## param[out] v vector

proc glm_ivec4_add*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## add vector [a] to vector [b] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec4_adds*(v: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## add scalar s to vector [v] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec4_sub*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## subtract vector [b] from vector [a] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec4_subs*(v: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## subtract scalar s from vector [v] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec4_mul*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## multiply vector [a] with vector [b] and store result in [dest]
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec4_scale*(v: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## multiply vector [v] with scalar [s] and store result in [dest]
## param[in]  v    vector
## param[in]  s    scalar
## param[out] dest destination

proc glm_ivec4_addadd*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## add vector [a] with vector [b] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a + b)

proc glm_ivec4_addadds*(a: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## add scalar s to vector [a] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a + s)

proc glm_ivec4_subadd*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## subtract vector [a] from vector [b] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a - b)

proc glm_ivec4_subadds*(a: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## subtract scalar s from vector [a] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a - s)

proc glm_ivec4_muladd*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## multiply vector [a] with vector [b] and add result to [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += (a * b)

proc glm_ivec4_muladds*(a: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## multiply vector [a] with scalar [s] and add result to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest += (a * s)

proc glm_ivec4_maxadd*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## add maximum of vector [a] and vector [b] to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += max(a, b)

proc glm_ivec4_minadd*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## add minimum of vector [a] and vector [b] to vector [dest]
## applies += operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest += min(a, b)

proc glm_ivec4_subsub*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## subtract vector [a] from vector [b] and subtract result from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= (a - b)

proc glm_ivec4_subsubs*(a: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## subtract scalar [s] from vector [a] and add result to vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a - s)

proc glm_ivec4_addsub*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## add vector [a] to vector [b] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  b    vector
## param[out] dest dest -= (a + b)

proc glm_ivec4_addsubs*(a: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## add scalar [s] to vector [a] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a + s)

proc glm_ivec4_mulsub*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## multiply vector [a] and vector [b] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  b    vector
## param[out] dest dest -= (a * b)

proc glm_ivec4_mulsubs*(a: Ivec4, s: cint, dest: var Ivec4) {.cglm.}
## multiply vector [a] with scalar [s] and subtract the result from [dest]
## applies -= operator so dest must be initialized
## param[in]  a    vector
## param[in]  s    scalar
## param[out] dest dest -= (a * s)

proc glm_ivec4_maxsub*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## subtract maximum of vector [a] and vector [b] from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= max(a, b)

proc glm_ivec4_minsub*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## subtract minimum of vector [a] and vector [b] from vector [dest]
## applies -= operator so dest must be initialized
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest dest -= min(a, b)

proc glm_ivec4_distance2*(a: Ivec4, b: Ivec4): cint {.cglm.}
## squared distance between two vectors
## param[in] a first vector
## param[in] b second vector
## return returns squared distance (distance * distance)

proc glm_ivec4_distance*(a: Ivec4, b: Ivec4): float {.cglm.}
## distance between two vectors
## param[in] a first vector
## param[in] b second vector
## return returns distance

proc glm_ivec4_maxv*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## set each member of dest to greater of vector a and b
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec4_minv*(a: Ivec4, b: Ivec4, dest: var Ivec4) {.cglm.}
## set each member of dest to lesser of vector a and b
## param[in]  a    first vector
## param[in]  b    second vector
## param[out] dest destination

proc glm_ivec4_clamp*(v: var Ivec4, minVal: cint, maxVal: cint) {.cglm.}
## clamp each member of [v] between minVal and maxVal (inclusive)
## param[in, out] v      vector
## param[in]      minVal minimum value
## param[in]      maxVal maximum value

proc glm_ivec4_abs*(v: Ivec4, dest: var Ivec4) {.cglm.}
## absolute value of v
## param[in]	v	vector
## param[out]	dest	destination