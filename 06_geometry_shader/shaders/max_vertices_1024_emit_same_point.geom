// max_vertices should be greater than 0 and less than or equal to maxGeometryOutputVertices.
// refer to VulkanInfo to see the value of your GPU.
// Generally speaking, Intel driver advertices this value to be 256 while Nvidia and AMD advertice 1024.
#version 450 core

layout(points) in;
layout(points, max_vertices = 1024) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {
    for (int i = 0; i < 1024; i++) {
        outColor = inColor[0];
        gl_Position = gl_in[0].gl_Position;
        EmitVertex();
    }
    EndPrimitive();
}