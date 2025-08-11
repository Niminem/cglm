import base

## /*
##  Plane equation:  Ax + By + Cz + D = 0;
##
##  It stored in vec4 as [A, B, C, D]. (A, B, C) is normal and D is distance
## */

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_plane_normalize*(plane: var Vec4) {.cglm.}
## normalizes a plane
## param[in, out] plane: plane to normalize