#version 450

layout(location = 0) in vec3 in_pos;
layout(location = 1) in vec3 in_color;

layout(location = 0) out vec3 fragColor;

// align with the max length of member, which is vec4(16 bytes)
// equivalent to below :
// layout(push_constant) uniform PushConst {
//     float scale;
//     layout(offset = 16) mov;
// }
layout(push_constant) uniform PushConst {
    float scale;
    vec4 mov;
};

void main() {
    vec3 new_in_pos = in_pos * scale;
    gl_Position = vec4(new_in_pos, 1.0) + mov;
    fragColor = in_color;
}