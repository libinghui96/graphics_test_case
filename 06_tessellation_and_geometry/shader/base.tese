#version 450

// layout(triangles) in;
// layout(triangles, fractional_odd_spacing) in;
// layout(triangles, fractional_even_spacing) in;
layout(triangles, equal_spacing) in;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {
    float u = gl_TessCoord.x;
    float v = gl_TessCoord.y;
    vec4 p0 = gl_in[0].gl_Position;
    vec4 p1 = gl_in[1].gl_Position;
    vec4 p2 = gl_in[2].gl_Position;

    gl_Position = p0 * (1 - u - v) + p1 * u + p2 * v;
    outColor = inColor[0] * (1 - u -v) + inColor[1] * u + inColor[2] * v;
}