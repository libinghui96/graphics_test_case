#version 450

layout(triangles) in;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {
    vec4 p0 = gl_in[0].gl_Position;
    vec4 p1 = gl_in[1].gl_Position;
    vec4 p2 = gl_in[2].gl_Position;

    gl_Position = p0 * 0.3 + p1 * 0.3 + p2 * 0.4;
    outColor = inColor[0] * 0.3 + inColor[1] * 0.3 + inColor[2] * 0.4;
}