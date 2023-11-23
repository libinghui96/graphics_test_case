#version 450

// default is ccw, counter-clockwise
layout(triangles, equal_spacing) in;
// layout(triangles, equal_spacing, ccw) in;
// layout(triangles, equal_spacing, cw) in;

layout(location = 0) in vec4 inColor[];
layout(location = 1) in vec2 inTexture_uv[];
layout(location = 0) out vec4 outColor;
layout(location = 1) out vec2 outTexture_uv[];

void main() {
    float u = gl_TessCoord.x;
    float v = gl_TessCoord.y;
    vec4 p0 = gl_in[0].gl_Position;
    vec4 p1 = gl_in[1].gl_Position;
    vec4 p2 = gl_in[2].gl_Position;

    gl_Position = p0 * (1 - u - v) + p1 * u + p2 * v;
    outColor = inColor[0] * (1 - u -v) + inColor[1] * u + inColor[2] * v;
    outTexture_uv = inTexture_uv[0] * (1 - u -v) + inTexture_uv[1] * u + inTexture_uv[2] * v;
}