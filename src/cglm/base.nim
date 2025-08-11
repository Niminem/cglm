## Base types used by the array API: https://cglm.readthedocs.io/en/latest/api_inline_array.html
## We also define some templates for accessing the components of these types as simple code substitutions.
## These components are imported from the C header file "struct.h" provided by cglm:
## https://cglm.readthedocs.io/en/latest/api_struct.html

{.pragma: cglm, header:  "cglm.h".}

const
    GLM_E*         = 2.71828182845904523536028747135266250  ## e      
    GLM_LOG2E*     = 1.44269504088896340735992468100189214  ## log2(e)
    GLM_LOG10E*    = 0.434294481903251827651128918916605082 ## log10(e)  
    GLM_LN2*       = 0.693147180559945309417232121458176568 ## loge(2)
    GLM_LN10*      = 2.30258509299404568401799145468436421  ## loge(10)  
    GLM_PI*        = 3.14159265358979323846264338327950288  ## pi     
    GLM_PI_2*      = 1.57079632679489661923132169163975144  ## pi/2   
    GLM_PI_4*      = 0.785398163397448309615660845819875721 ## pi/4   
    GLM_1_PI*      = 0.318309886183790671537767526745028724 ## 1/pi   
    GLM_2_PI*      = 0.636619772367581343075535053490057448 ## 2/pi   
    GLM_2_SQRTPI*  = 1.12837916709551257389615890312154517  ## 2/sqrt(pi)
    GLM_SQRT2*     = 1.41421356237309504880168872420969808  ## sqrt(2)
    GLM_SQRT1_2*   = 0.707106781186547524400844362104849039 ## 1/sqrt(2) 
    GLM_Ef* = cfloat GLM_E
    GLM_LOG2Ef* = cfloat GLM_LOG2E
    GLM_LOG10Ef* = cfloat GLM_LOG10E
    GLM_LN2f* = cfloat GLM_LN2
    GLM_LN10f* = cfloat GLM_LN10
    GLM_PIf* = cfloat GLM_PI
    GLM_PI_2f* = cfloat GLM_PI_2
    GLM_PI_4f* = cfloat GLM_PI_4
    GLM_1_PIf* = cfloat GLM_1_PI
    GLM_2_PIf* = cfloat GLM_2_PI
    GLM_2_SQRTPIf* = cfloat GLM_2_SQRTPI
    GLM_SQRT2f* = cfloat GLM_SQRT2
    GLM_SQRT1_2f* = cfloat GLM_SQRT1_2

# Ivec2 ----------
type Ivec2* {.importc: "ivec2", cglm.} = array[2, cint]

template x*(v: Ivec2): cint = v[0]
template y*(v: Ivec2): cint = v[1]
template `x=`*(v: var Ivec2, val: cint) = v[0] = val
template `y=`*(v: var Ivec2, val: cint) = v[1] = val

template r*(v: Ivec2): cint = v[0]
template i*(v: Ivec2): cint = v[1]
template `r=`*(v: var Ivec2, val: cint) = v[0] = val
template `i=`*(v: var Ivec2, val: cint) = v[1] = val

template u*(v: Ivec2): cint = v[0]
template v*(v: Ivec2): cint = v[1]
template `u=`*(v: var Ivec2, val: cint) = v[0] = val
template `v=`*(v: var Ivec2, val: cint) = v[1] = val

template s*(v: Ivec2): cint = v[0]
template t*(v: Ivec2): cint = v[1]
template `s=`*(v: var Ivec2, val: cint) = v[0] = val
template `t=`*(v: var Ivec2, val: cint) = v[1] = val
# ----------

# Ivec3 ----------
type Ivec3* {.importc: "ivec3", cglm.} = array[3, cint]

template x*(v: Ivec3): cint = v[0]
template y*(v: Ivec3): cint = v[1]
template z*(v: Ivec3): cint = v[2]
template `x=`*(v: var Ivec3, val: cint) = v[0] = val
template `y=`*(v: var Ivec3, val: cint) = v[1] = val
template `z=`*(v: var Ivec3, val: cint) = v[2] = val

template r*(v: Ivec3): cint = v[0]
template g*(v: Ivec3): cint = v[1]
template b*(v: Ivec3): cint = v[2]
template `r=`*(v: var Ivec3, val: cint) = v[0] = val
template `g=`*(v: var Ivec3, val: cint) = v[1] = val
template `b=`*(v: var Ivec3, val: cint) = v[2] = val
# ----------

# Ivec4 ----------
type Ivec4* {.importc: "ivec4", cglm.} = array[4, cint]

template x*(v: Ivec4): cint = v[0]
template y*(v: Ivec4): cint = v[1]
template z*(v: Ivec4): cint = v[2]
template w*(v: Ivec4): cint = v[3]
template `x=`*(v: var Ivec4, val: cint) = v[0] = val
template `y=`*(v: var Ivec4, val: cint) = v[1] = val
template `z=`*(v: var Ivec4, val: cint) = v[2] = val
template `w=`*(v: var Ivec4, val: cint) = v[3] = val

template r*(v: Ivec4): cint = v[0]
template g*(v: Ivec4): cint = v[1]
template b*(v: Ivec4): cint = v[2]
template a*(v: Ivec4): cint = v[3]
template `r=`*(v: var Ivec4, val: cint) = v[0] = val
template `g=`*(v: var Ivec4, val: cint) = v[1] = val
template `b=`*(v: var Ivec4, val: cint) = v[2] = val
template `a=`*(v: var Ivec4, val: cint) = v[3] = val
# ----------

# Vec2 ----------
type Vec2* {.importc: "vec2", cglm.} = array[2, cfloat]

template x*(v: Vec2): cfloat = v[0]
template y*(v: Vec2): cfloat = v[1]
template `x=`*(v: var Vec2, val: cfloat) = v[0] = val
template `y=`*(v: var Vec2, val: cfloat) = v[1] = val

template r*(v: Vec2): cfloat = v[0]
template i*(v: Vec2): cfloat = v[1]
template `r=`*(v: var Vec2, val: cfloat) = v[0] = val
template `i=`*(v: var Vec2, val: cfloat) = v[1] = val

template u*(v: Vec2): cfloat = v[0]
template v*(v: Vec2): cfloat = v[1]
template `u=`*(v: var Vec2, val: cfloat) = v[0] = val
template `v=`*(v: var Vec2, val: cfloat) = v[1] = val

template s*(v: Vec2): cfloat = v[0]
template t*(v: Vec2): cfloat = v[1]
template `s=`*(v: var Vec2, val: cfloat) = v[0] = val
template `t=`*(v: var Vec2, val: cfloat) = v[1] = val
# ----------

# Vec3 ----------
type Vec3* {.importc: "vec3", cglm.} = array[3, cfloat]

template x*(v: Vec3): cfloat = v[0]
template y*(v: Vec3): cfloat = v[1]
template z*(v: Vec3): cfloat = v[2]
template `x=`*(v: var Vec3, val: cfloat) = v[0] = val
template `y=`*(v: var Vec3, val: cfloat) = v[1] = val
template `z=`*(v: var Vec3, val: cfloat) = v[2] = val

template r*(v: Vec3): cfloat = v[0]
template g*(v: Vec3): cfloat = v[1]
template b*(v: Vec3): cfloat = v[2]
template `r=`*(v: var Vec3, val: cfloat) = v[0] = val
template `g=`*(v: var Vec3, val: cfloat) = v[1] = val
template `b=`*(v: var Vec3, val: cfloat) = v[2] = val
# ----------

# Vec4 ----------
type Vec4* {.importc: "vec4", cglm.} = array[4, cfloat]

template x*(v: Vec4): cfloat = v[0]
template y*(v: Vec4): cfloat = v[1]
template z*(v: Vec4): cfloat = v[2]
template w*(v: Vec4): cfloat = v[3]
template `x=`*(v: var Vec4, val: cfloat) = v[0] = val
template `y=`*(v: var Vec4, val: cfloat) = v[1] = val
template `z=`*(v: var Vec4, val: cfloat) = v[2] = val
template `w=`*(v: var Vec4, val: cfloat) = v[3] = val

template r*(v: Vec4): cfloat = v[0]
template g*(v: Vec4): cfloat = v[1]
template b*(v: Vec4): cfloat = v[2]
template a*(v: Vec4): cfloat = v[3]
template `r=`*(v: var Vec4, val: cfloat) = v[0] = val
template `g=`*(v: var Vec4, val: cfloat) = v[1] = val
template `b=`*(v: var Vec4, val: cfloat) = v[2] = val
template `a=`*(v: var Vec4, val: cfloat) = v[3] = val
# ----------

# Versors (quaternions) ----------
type Versor* {.importc: "versor", cglm.} = Vec4 # |x, y, z, w| -> w is the last # think this is a quaternion?

# xyzw and rgba templates are provided by Vec4 (its alias)

template imag*(v: Versor): Vec3 = v[0..2] # imaginary part
template real*(v: Versor): cfloat = v[3] # real part
template `imag=`*(v: var Versor, val: Vec3) = v[0..2] = val
template `real=`*(v: var Versor, val: cfloat) = v[3] = val
# ----------

# Mat2 ----------
type Mat2* {.importc: "mat2", cglm.} = array[2, Vec2] # 2x2 matrix

template m00*(m: Mat2): cfloat = m[0][0]
template m01*(m: Mat2): cfloat = m[0][1]
template m10*(m: Mat2): cfloat = m[1][0]
template m11*(m: Mat2): cfloat = m[1][1]
template `m00=`*(m: var Mat2, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat2, val: cfloat) = m[0][1] = val
template `m10=`*(m: var Mat2, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat2, val: cfloat) = m[1][1] = val
# ----------

# Mat3 ----------
type Mat3* {.importc: "mat3", cglm.} = array[3, Vec3] # 3x3 matrix

template m00*(m: Mat3): cfloat = m[0][0]
template m01*(m: Mat3): cfloat = m[0][1]
template m02*(m: Mat3): cfloat = m[0][2]
template m10*(m: Mat3): cfloat = m[1][0]
template m11*(m: Mat3): cfloat = m[1][1]
template m12*(m: Mat3): cfloat = m[1][2]
template m20*(m: Mat3): cfloat = m[2][0]
template m21*(m: Mat3): cfloat = m[2][1]
template m22*(m: Mat3): cfloat = m[2][2]
template `m00=`*(m: var Mat3, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat3, val: cfloat) = m[0][1] = val
template `m02=`*(m: var Mat3, val: cfloat) = m[0][2] = val
template `m10=`*(m: var Mat3, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat3, val: cfloat) = m[1][1] = val
template `m12=`*(m: var Mat3, val: cfloat) = m[1][2] = val
template `m20=`*(m: var Mat3, val: cfloat) = m[2][0] = val
template `m21=`*(m: var Mat3, val: cfloat) = m[2][1] = val
template `m22=`*(m: var Mat3, val: cfloat) = m[2][2] = val
# ----------

# Mat4 ----------
type Mat4* {.importc: "mat4", cglm.} = array[4, Vec4] # 4x4 matrix

template m00*(m: Mat4): cfloat = m[0][0]
template m01*(m: Mat4): cfloat = m[0][1]
template m02*(m: Mat4): cfloat = m[0][2]
template m03*(m: Mat4): cfloat = m[0][3]
template m10*(m: Mat4): cfloat = m[1][0]
template m11*(m: Mat4): cfloat = m[1][1]
template m12*(m: Mat4): cfloat = m[1][2]
template m13*(m: Mat4): cfloat = m[1][3]
template m20*(m: Mat4): cfloat = m[2][0]
template m21*(m: Mat4): cfloat = m[2][1]
template m22*(m: Mat4): cfloat = m[2][2]
template m23*(m: Mat4): cfloat = m[2][3]
template m30*(m: Mat4): cfloat = m[3][0]
template m31*(m: Mat4): cfloat = m[3][1]
template m32*(m: Mat4): cfloat = m[3][2]
template m33*(m: Mat4): cfloat = m[3][3]
template `m00=`*(m: var Mat4, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat4, val: cfloat) = m[0][1] = val
template `m02=`*(m: var Mat4, val: cfloat) = m[0][2] = val
template `m03=`*(m: var Mat4, val: cfloat) = m[0][3] = val
template `m10=`*(m: var Mat4, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat4, val: cfloat) = m[1][1] = val
template `m12=`*(m: var Mat4, val: cfloat) = m[1][2] = val
template `m13=`*(m: var Mat4, val: cfloat) = m[1][3] = val
template `m20=`*(m: var Mat4, val: cfloat) = m[2][0] = val
template `m21=`*(m: var Mat4, val: cfloat) = m[2][1] = val
template `m22=`*(m: var Mat4, val: cfloat) = m[2][2] = val
template `m23=`*(m: var Mat4, val: cfloat) = m[2][3] = val
template `m30=`*(m: var Mat4, val: cfloat) = m[3][0] = val
template `m31=`*(m: var Mat4, val: cfloat) = m[3][1] = val
template `m32=`*(m: var Mat4, val: cfloat) = m[3][2] = val
template `m33=`*(m: var Mat4, val: cfloat) = m[3][3] = val
# ----------

# Mat2x3s ----------
type Mat2x3* {.importc: "mat2x3", cglm.} = array[2, Vec3] # 2x3 matrix

template m00*(m: Mat2x3): cfloat = m[0][0]
template m01*(m: Mat2x3): cfloat = m[0][1]
template m02*(m: Mat2x3): cfloat = m[0][2]
template m10*(m: Mat2x3): cfloat = m[1][0]
template m11*(m: Mat2x3): cfloat = m[1][1]
template m12*(m: Mat2x3): cfloat = m[1][2]
template `m00=`*(m: var Mat2x3, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat2x3, val: cfloat) = m[0][1] = val
template `m02=`*(m: var Mat2x3, val: cfloat) = m[0][2] = val
template `m10=`*(m: var Mat2x3, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat2x3, val: cfloat) = m[1][1] = val
template `m12=`*(m: var Mat2x3, val: cfloat) = m[1][2] = val
# ----------

# Mat2x4 ----------
type Mat2x4* {.importc: "mat2x4", cglm.} = array[2, Vec4] # 2x4 matrix

template m00*(m: Mat2x4): cfloat = m[0][0]
template m01*(m: Mat2x4): cfloat = m[0][1]
template m02*(m: Mat2x4): cfloat = m[0][2]
template m03*(m: Mat2x4): cfloat = m[0][3]
template m10*(m: Mat2x4): cfloat = m[1][0]
template m11*(m: Mat2x4): cfloat = m[1][1]
template m12*(m: Mat2x4): cfloat = m[1][2]
template m13*(m: Mat2x4): cfloat = m[1][3]
template `m00=`*(m: var Mat2x4, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat2x4, val: cfloat) = m[0][1] = val
template `m02=`*(m: var Mat2x4, val: cfloat) = m[0][2] = val
template `m03=`*(m: var Mat2x4, val: cfloat) = m[0][3] = val
template `m10=`*(m: var Mat2x4, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat2x4, val: cfloat) = m[1][1] = val
template `m12=`*(m: var Mat2x4, val: cfloat) = m[1][2] = val
template `m13=`*(m: var Mat2x4, val: cfloat) = m[1][3] = val
# ----------

# Mat3x2 ----------
type Mat3x2* {.importc: "mat3x2", cglm.} = array[3, Vec2] # 3x2 matrix

template m00*(m: Mat3x2): cfloat = m[0][0]
template m01*(m: Mat3x2): cfloat = m[0][1]
template m10*(m: Mat3x2): cfloat = m[1][0]
template m11*(m: Mat3x2): cfloat = m[1][1]
template m20*(m: Mat3x2): cfloat = m[2][0]
template m21*(m: Mat3x2): cfloat = m[2][1]
template `m00=`*(m: var Mat3x2, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat3x2, val: cfloat) = m[0][1] = val
template `m10=`*(m: var Mat3x2, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat3x2, val: cfloat) = m[1][1] = val
template `m20=`*(m: var Mat3x2, val: cfloat) = m[2][0] = val
template `m21=`*(m: var Mat3x2, val: cfloat) = m[2][1] = val
# ----------

# Mat3x4 ----------
type Mat3x4* {.importc: "mat3x4", cglm.} = array[3, Vec4] # 3x4 matrix

template m00*(m: Mat3x4): cfloat = m[0][0]
template m01*(m: Mat3x4): cfloat = m[0][1]
template m02*(m: Mat3x4): cfloat = m[0][2]
template m03*(m: Mat3x4): cfloat = m[0][3]
template m10*(m: Mat3x4): cfloat = m[1][0]
template m11*(m: Mat3x4): cfloat = m[1][1]
template m12*(m: Mat3x4): cfloat = m[1][2]
template m13*(m: Mat3x4): cfloat = m[1][3]
template m20*(m: Mat3x4): cfloat = m[2][0]
template m21*(m: Mat3x4): cfloat = m[2][1]
template m22*(m: Mat3x4): cfloat = m[2][2]
template m23*(m: Mat3x4): cfloat = m[2][3]
template `m00=`*(m: var Mat3x4, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat3x4, val: cfloat) = m[0][1] = val
template `m02=`*(m: var Mat3x4, val: cfloat) = m[0][2] = val
template `m03=`*(m: var Mat3x4, val: cfloat) = m[0][3] = val
template `m10=`*(m: var Mat3x4, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat3x4, val: cfloat) = m[1][1] = val
template `m12=`*(m: var Mat3x4, val: cfloat) = m[1][2] = val
template `m13=`*(m: var Mat3x4, val: cfloat) = m[1][3] = val
template `m20=`*(m: var Mat3x4, val: cfloat) = m[2][0] = val
template `m21=`*(m: var Mat3x4, val: cfloat) = m[2][1] = val
template `m22=`*(m: var Mat3x4, val: cfloat) = m[2][2] = val
template `m23=`*(m: var Mat3x4, val: cfloat) = m[2][3] = val
# ----------

# Mat4x2 ----------
type Mat4x2* {.importc: "mat4x2", cglm.} = array[4, Vec2] # 4x2 matrix

template m00*(m: Mat4x2): cfloat = m[0][0]
template m01*(m: Mat4x2): cfloat = m[0][1]
template m10*(m: Mat4x2): cfloat = m[1][0]
template m11*(m: Mat4x2): cfloat = m[1][1]
template m20*(m: Mat4x2): cfloat = m[2][0]
template m21*(m: Mat4x2): cfloat = m[2][1]
template m30*(m: Mat4x2): cfloat = m[3][0]
template m31*(m: Mat4x2): cfloat = m[3][1]
template `m00=`*(m: var Mat4x2, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat4x2, val: cfloat) = m[0][1] = val
template `m10=`*(m: var Mat4x2, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat4x2, val: cfloat) = m[1][1] = val
template `m20=`*(m: var Mat4x2, val: cfloat) = m[2][0] = val
template `m21=`*(m: var Mat4x2, val: cfloat) = m[2][1] = val
template `m30=`*(m: var Mat4x2, val: cfloat) = m[3][0] = val
template `m31=`*(m: var Mat4x2, val: cfloat) = m[3][1] = val
# ----------

# Mat4x3 ----------
type Mat4x3* {.importc: "mat4x3", cglm.} = array[4, Vec3] # 4x3 matrix

template m00*(m: Mat4x3): cfloat = m[0][0]
template m01*(m: Mat4x3): cfloat = m[0][1]
template m02*(m: Mat4x3): cfloat = m[0][2]
template m10*(m: Mat4x3): cfloat = m[1][0]
template m11*(m: Mat4x3): cfloat = m[1][1]
template m12*(m: Mat4x3): cfloat = m[1][2]
template m20*(m: Mat4x3): cfloat = m[2][0]
template m21*(m: Mat4x3): cfloat = m[2][1]
template m22*(m: Mat4x3): cfloat = m[2][2]
template m30*(m: Mat4x3): cfloat = m[3][0]
template m31*(m: Mat4x3): cfloat = m[3][1]
template m32*(m: Mat4x3): cfloat = m[3][2]
template `m00=`*(m: var Mat4x3, val: cfloat) = m[0][0] = val
template `m01=`*(m: var Mat4x3, val: cfloat) = m[0][1] = val
template `m02=`*(m: var Mat4x3, val: cfloat) = m[0][2] = val
template `m10=`*(m: var Mat4x3, val: cfloat) = m[1][0] = val
template `m11=`*(m: var Mat4x3, val: cfloat) = m[1][1] = val
template `m12=`*(m: var Mat4x3, val: cfloat) = m[1][2] = val
template `m20=`*(m: var Mat4x3, val: cfloat) = m[2][0] = val
template `m21=`*(m: var Mat4x3, val: cfloat) = m[2][1] = val
template `m22=`*(m: var Mat4x3, val: cfloat) = m[2][2] = val
template `m30=`*(m: var Mat4x3, val: cfloat) = m[3][0] = val
template `m31=`*(m: var Mat4x3, val: cfloat) = m[3][1] = val
template `m32=`*(m: var Mat4x3, val: cfloat) = m[3][2] = val
# ----------