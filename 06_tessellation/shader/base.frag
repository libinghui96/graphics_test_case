#version 450

layout(location = 0) in vec4 fragColor;
layout(location = 1) in vec2 inTexture_uv;
layout(location = 0) out vec4 outColor;

void main() {
    // outColor = fragColor + vec4(inTexture_uv, 0.0, 0.0);
    outColor = fragColor;
}