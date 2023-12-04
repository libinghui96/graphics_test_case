#version 450

layout(location = 0) in vec3 in_pos;
layout(location = 1) in vec3 in_color;

layout(location = 0) out vec3 fragColor;

layout(push_constant) uniform PushConst {
    float scale;
};

void main() {
    vec3 new_in_pos = in_pos;
    new_in_pos.y = in_pos.y * scale;
    gl_Position = vec4(new_in_pos, 1.0);
    fragColor = in_color;
}