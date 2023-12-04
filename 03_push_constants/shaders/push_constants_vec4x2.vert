#version 450

layout(location = 0) in vec3 in_pos;
layout(location = 1) in vec3 in_color;

layout(location = 0) out vec3 fragColor;

// should align to vec4
layout(push_constant) uniform PushConst {
    vec4 x_mov;
    vec4 y_mov;

layout(location = 0) in vec2 in_pos;
layout(location = 1) in vec3 in_color;

layout(location = 0) out vec3 fragColor;

// align to vec2
layout(push_constant) uniform PushConst {
    vec2 x_mov;
    vec2 y_mov;
};

void main() {
    vec2 new_in_pos = in_pos + x_mov + y_mov;
    gl_Position = vec4(new_in_pos, 0.0, 1.0);
    fragColor = in_color;
}
};

void main() {
    gl_Position = vec4(in_pos, 1.0) + x_mov + y_mov;
    fragColor = in_color;
}