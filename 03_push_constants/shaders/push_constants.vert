#version 450

layout(location = 0) in vec2 in_pos;
layout(location = 1) in vec3 in_color;

layout(location = 0) out vec3 fragColor;

layout(push_constant, std430) uniform offsets {
    float scale;
    vec4 offset;
};

void main() {
    gl_Position = vec4(in_pos, 0.0, 1.0) * scale + offset;
    fragColor = in_color;
}