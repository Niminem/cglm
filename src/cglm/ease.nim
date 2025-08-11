import base

{.pragma: cglm, cdecl, importc, header: "cglm.h".}

proc glm_ease_linear*(t: cfloat): cfloat {.cglm.}

proc glm_ease_sine_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_sine_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_sine_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quad_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quad_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quad_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_cubic_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_cubic_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_cubic_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quart_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quart_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quart_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quint_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quint_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_quint_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_exp_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_exp_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_exp_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_circ_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_circ_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_circ_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_back_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_back_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_back_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_elast_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_elast_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_elast_inout*(t: cfloat): cfloat {.cglm.}

proc glm_ease_bounce_out*(t: cfloat): cfloat {.cglm.}

proc glm_ease_bounce_in*(t: cfloat): cfloat {.cglm.}

proc glm_ease_bounce_inout*(t: cfloat): cfloat {.cglm.}