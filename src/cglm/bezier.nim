import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

const
    GLM_BEZIER_MAT* = Mat4 [
        [cfloat -1.0, 3.0, -3.0, 1.0], [cfloat 3.0, -6.0, 3.0, 0.0], [cfloat -3.0, 3.0, 0.0, 0.0], [cfloat 1.0, 0.0, 0.0, 0.0]
        ]
    GLM_HERMITE_MAT* = Mat4 [
        [cfloat 2.0, -3.0, 0.0, 1.0], [cfloat -2.0, 3.0, 0.0, 0.0], [cfloat 1.0, -2.0, 1.0, 0.0], [cfloat 1.0, -1.0, 0.0, 0.0]
        ]
    CGLM_DECASTEL_EPS* = cfloat 1e-9f
    CGLM_DECASTEL_MAX* = cint 1000
    CGLM_DECASTEL_SMALL* = cfloat 1e-20

proc glm_bezier*(s: cfloat, p0: cfloat, c0: cfloat, c1: cfloat, p1: cfloat): cfloat {.cglm.}
##  * @brief cubic bezier interpolation
##  *
##  * Formula:
##  *  B(s) = P0*(1-s)^3 + 3*C0*s*(1-s)^2 + 3*C1*s^2*(1-s) + P1*s^3
##  *
##  * similar result using matrix:
##  *  B(s) = glm_smc(t, GLM_BEZIER_MAT, (vec4){p0, c0, c1, p1})
##  *
##  * glm_eq(glm_smc(...), glm_bezier(...)) should return TRUE
##  *
##  * @param[in]  s    parameter between 0 and 1
##  * @param[in]  p0   begin point
##  * @param[in]  c0   control point 1
##  * @param[in]  c1   control point 2
##  * @param[in]  p1   end point
##  *
##  * @return B(s)

proc glm_hermite*(s: cfloat, p0: cfloat, t0: cfloat, t1: cfloat, p1: cfloat): cfloat {.cglm.}
##  * @brief cubic hermite interpolation
##  *
##  * Formula:
##  *  H(s) = P0*(2*s^3 - 3*s^2 + 1) + T0*(s^3 - 2*s^2 + s)
##  *            + P1*(-2*s^3 + 3*s^2) + T1*(s^3 - s^2)
##  *
##  * similar result using matrix:
##  *  H(s) = glm_smc(t, GLM_HERMITE_MAT, (vec4){p0, p1, c0, c1})
##  *
##  * glm_eq(glm_smc(...), glm_hermite(...)) should return TRUE
##  *
##  * @param[in]  s    parameter between 0 and 1
##  * @param[in]  p0   begin point
##  * @param[in]  t0   tangent 1
##  * @param[in]  t1   tangent 2
##  * @param[in]  p1   end point
##  *
##  * @return H(s)

proc glm_decasteljau*(prm: cfloat, p0: cfloat, c0: cfloat, c1: cfloat, p1: cfloat): cfloat {.cglm.}
## iterative way to solve cubic equation
## @param[in]  prm  parameter between 0 and 1
## @param[in]  p0   begin point
## @param[in]  c0   control point 1
## @param[in]  c1   control point 2
## @param[in]  p1   end point
##
## @return parameter to use in cubic equation