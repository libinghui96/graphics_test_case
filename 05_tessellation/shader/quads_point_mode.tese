#version 450

// default is ccw, counter-clockwise
layout(quads, equal_spacing, point_mode) in;

layout(location = 0) in vec4 inColor[];
layout(location = 1) in vec2 inTexture_uv[];
layout(location = 0) out vec4 outColor;
layout(location = 1) out vec2 outTexture_uv;

void main() {
    float u = gl_TessCoord.x;
    float v = gl_TessCoord.y;

    vec4 a = mix(gl_in[0].gl_Position, gl_in[3].gl_Position, u);
    vec4 b = mix(gl_in[1].gl_Position, gl_in[2].gl_Position, u);
    gl_Position = mix(a, b, v);

    vec4 c = mix(inColor[0], inColor[3], u);
    vec4 d = mix(inColor[1], inColor[2], u);
    outColor = mix(c, d, v);

    vec2 e = mix(inTexture_uv[0], inTexture_uv[3], u);
    vec2 f = mix(inTexture_uv[1], inTexture_uv[2], u);
    outTexture_uv = mix(e, f, v);
}