template GLM_SHUFFLE4*(z, y, x, w: cint): cint = (z shl 6.cint) or (y shl 4.cint) or (x shl 2.cint) or (w)
template GLM_SHUFFLE3*(z, y, x: cint): cint = (z shl 4.cint) or (y shl 2.cint) or (x)
template GLM_SHUFFLE2*(y, x: cint): cint = (y shl 2.cint) or (x)

const GLM_FLT_EPSILON* = cfloat 1e-5f # I believe this is just used internally, providing for now just in case

##  Clip control: define CGLM_FORCE_DEPTH_ZERO_TO_ONE before including
##  CGLM to use a clip space between 0 to 1.
##  Coordinate system: define CGLM_FORCE_LEFT_HANDED before including
##  CGLM to use the left handed coordinate system by default.

const # Clip control bits
  CGLM_CLIP_CONTROL_ZO_BIT* = 1 shl 0  # ZERO_TO_ONE
  CGLM_CLIP_CONTROL_NO_BIT* = 1 shl 1  # NEGATIVE_ONE_TO_ONE
  CGLM_CLIP_CONTROL_LH_BIT* = 1 shl 2  # LEFT_HANDED, For DirectX, Metal, Vulkan
  CGLM_CLIP_CONTROL_RH_BIT* = 1 shl 3  # RIGHT_HANDED, For OpenGL, default in GLM

const # Common clip control configurations
  CGLM_CLIP_CONTROL_LH_ZO* = CGLM_CLIP_CONTROL_LH_BIT or CGLM_CLIP_CONTROL_ZO_BIT
  CGLM_CLIP_CONTROL_LH_NO* = CGLM_CLIP_CONTROL_LH_BIT or CGLM_CLIP_CONTROL_NO_BIT
  CGLM_CLIP_CONTROL_RH_ZO* = CGLM_CLIP_CONTROL_RH_BIT or CGLM_CLIP_CONTROL_ZO_BIT
  CGLM_CLIP_CONTROL_RH_NO* = CGLM_CLIP_CONTROL_RH_BIT or CGLM_CLIP_CONTROL_NO_BIT