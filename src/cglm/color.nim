import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_luminance*(rgb: Vec3): cfloat {.cglm.}
## averages the color channels into one value
## @param[in]  rgb RGB color