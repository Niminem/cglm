## repo: https://github.com/recp/cglm
## docs: https://cglm.readthedocs.io/en/latest/index.html
## current version: v0.9.6

import std/[os]
{.passC: "-I " & currentSourcePath.parentDir() / "cglm" / "cglm".}

import cglm/[base, aabb, affine, bezier, cam, color, common, curve, ease, euler, frustum,
       io, ivec2, ivec3, ivec4, mat2, mat2x3, mat2x4, mat3, mat3x2, mat3x4, mat4,
       mat4x2, mat4x3, noise, plane, project, quat, ray, sphere, util, vec2, vec3,
       vec4, version]
export base, aabb, affine, bezier, cam, color, common, curve, ease, euler, frustum,
       io, ivec2, ivec3, ivec4, mat2, mat2x3, mat2x4, mat3, mat3x2, mat3x4, mat4,
       mat4x2, mat4x3, noise, plane, project, quat, ray, sphere, util, vec2, vec3,
       vec4, version