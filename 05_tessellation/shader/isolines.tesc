#version 450

layout(vertices = 4) out;
layout(location = 0) in vec4 inColor[];
layout(location = 1) in vec2 inTexture_uv[];

layout(location = 0) out vec4 outColor[];
layout(location = 1) out vec2 outTexture_uv[];

void main() {
    gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
    outColor[gl_InvocationID] = inColor[gl_InvocationID];
    outTexture_uv[gl_InvocationID] = inTexture_uv[gl_InvocationID];

    if (gl_InvocationID == 0) {
        gl_TessLevelOuter[0] = 4;
        gl_TessLevelOuter[1] = 3;
    }
}