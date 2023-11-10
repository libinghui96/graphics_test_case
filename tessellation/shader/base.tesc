#version 450

layout(vertices = 3) out;
layout(location = 0) in vec3 inColor[];

layout(location = 0) out vec3 outColor[];

void main() {
    gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
    outColor[gl_InvocationID] = inColor[gl_InvocationID];

    if (gl_InvocationID == 0) {
        gl_TessLevelOuter[0] = 2.0;
        gl_TessLevelOuter[1] = 2.0;
        gl_TessLevelOuter[2] = 2.0;
        gl_TessLevelOuter[3] = 2.0;
        gl_TessLevelInner[0] = 2.0;
        gl_TessLevelInner[1] = 2.0;
    }
}