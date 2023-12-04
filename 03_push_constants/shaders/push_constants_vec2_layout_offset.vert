#version 450

layout(location = 0) in vec2 in_pos;
layout(location = 1) in vec3 in_color;

layout(location = 0) out vec3 fragColor;

// align to vec2
layout(push_constant) uniform PushConst {
    vec2 x_mov;
    // 'offset' : must be a multiple of the member's alignment (member alignment = 8)
    layout(offset = 16) vec2 y_mov;
};

void main() {
    vec2 new_in_pos = in_pos + x_mov + y_mov;
    gl_Position = vec4(new_in_pos, 0.0, 1.0);
    fragColor = in_color;
}