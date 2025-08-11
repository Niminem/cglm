import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_sign*(val: cint): cint {.cglm.} ## get sign of 32 bit integer as +1, -1, 0 (Important: It returns 0 for zero input)
proc glm_signf*(val: cfloat): cfloat {.cglm.} ## get sign of 32 bit float as +1, -1, 0 (Important: It returns 0 for zero/NaN input)
proc glm_rad*(deg: cfloat): cfloat {.cglm.} ## convert degree to radians
proc glm_deg*(rad: cfloat): cfloat {.cglm.} ## convert radians to degree
proc glm_make_rad*(deg: ptr cfloat) {.cglm.} ## convert existing degree to radians. this will override degrees value
proc glm_make_deg*(rad: ptr cfloat) {.cglm.} ## convert existing radians to degree. this will override radians value
proc glm_pow2*(x: cfloat): cfloat {.cglm.} ## multiplies given parameter with itself = x * x or powf(x, 2)
proc glm_min*(a, b: cfloat): cfloat {.cglm.} ## find minimum of given two values
proc glm_max*(a, b: cfloat): cfloat {.cglm.} ## find maximum of given two values
proc glm_imin*(a, b: cint): cint {.cglm.} ## find minimum of given two values (returns smallest of the two values)
proc glm_imax*(a, b: cint): cint {.cglm.} ## find maximum of given two values (returns largest of the two values)
proc glm_clamp*(val, minVal, maxVal: cfloat): cfloat {.cglm.} ## clamp a number between min and max
proc glm_clamp_zo*(val: cfloat): cfloat {.cglm.} ## clamp a number to zero and one
proc glm_lerp*(fromVal, to, t: cfloat): cfloat {.cglm.} ## linear interpolation between two numbers (formula: from + t * (to - from))
                                                            ## interpolant (amount)
proc glm_lerpc*(fromVal, to, t: cfloat): cfloat {.cglm.} ## clamped linear interpolation between two numbers (formula: from + t * (to - from))
                                                         ## interpolant (amount) clamped between 0 and 1
proc glm_step*(edge, x: cfloat): cfloat {.cglm.} ## threshold function (returns 0.0 if x < edge, else 1.0)
proc glm_smooth*(t: cfloat): cfloat {.cglm.} ## smooth Hermite interpolation (formula: t^2 * (3-2t))
proc glm_smoothstep*(edge0, edge1, x: cfloat): cfloat {.cglm.} ## threshold function with a smooth transition (according to OpenCL specs)
                                                          ## formula: t^2 * (3-2t)
                                                          ## @param[in]   edge0 low threshold
                                                          ## @param[in]   edge1 high threshold
                                                          ## @param[in]   x     interpolant (amount)
proc glm_smoothinterp*(fromVal, to, t: cfloat): cfloat {.cglm.} ## smoothstep interpolation between two numbers (formula: from + smoothstep(t) * (to - from))
                                                          ## param[in]   from from value
                                                          ## param[in]   to   to value
                                                          ## param[in]   t    interpolant (amount)
proc glm_smoothinterpc*(fromVal, to, t: cfloat): cfloat {.cglm.} ## clamped smoothstep interpolation between two numbers (formula: from + smoothstep(t) * (to - from))
                                                          ## param[in]   from from value
                                                          ## param[in]   to   to value
                                                          ## param[in]   t    interpolant (amount) clamped between 0 and 1
proc glm_eq*(a, b: cfloat): bool {.cglm.} ## check if two float equal with using EPSILON
proc glm_percent*(fromVal, to, current: cfloat): cfloat {.cglm.} ## percentage of current value between start and end value
                                                          ## maybe fraction could be alternative name.
                                                          ## @param[in]   from    from value
                                                          ## @param[in]   to      to value
                                                          ## @param[in]   current current value
proc glm_percentc*(fromVal, to, current: cfloat): cfloat {.cglm.} ## clamped percentage of current value between start and end value
                                                          ## @param[in]   from    from value
                                                          ## @param[in]   to      to value
                                                          ## @param[in]   current current value
proc glm_swapf*(a, b: ptr cfloat) {.cglm.} ## swap two float values
                                                          ## @param[in]   a float value 1 (pointer)
                                                          ## @param[in]   b float value 2 (pointer)