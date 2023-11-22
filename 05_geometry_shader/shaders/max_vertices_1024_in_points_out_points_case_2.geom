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
        switch (i % 8) {
            case 0: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x - 0.05;
	            gl_Position.y = gl_Position.y - 0.1 - (i - (i % 8)) / 8 * 0.006;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 1: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x + 0.05;
	            gl_Position.y = gl_Position.y - 0.1 - (i - (i % 8)) / 8 * 0.006;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 2: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x + 0.1 + (i - (i % 8)) / 8 * 0.006;
	            gl_Position.y = gl_Position.y - 0.05;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 3: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x + 0.1 + (i - (i % 8)) / 8 * 0.006;
	            gl_Position.y = gl_Position.y + 0.05;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 4: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x + 0.05;
	            gl_Position.y = gl_Position.y + 0.1 + (i - (i % 8)) / 8 * 0.006;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 5: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x - 0.05;
	            gl_Position.y = gl_Position.y + 0.1 + (i - (i % 8)) / 8 * 0.006;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 6: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x - 0.1 - (i - (i % 8)) / 8 * 0.006;
	            gl_Position.y = gl_Position.y + 0.05;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            case 7: {
	            outColor = inColor[0];
	            gl_Position = gl_in[0].gl_Position;
                gl_Position.x = gl_Position.x - 0.1 - (i - (i % 8)) / 8 * 0.006;
	            gl_Position.y = gl_Position.y - 0.05;
	            EmitVertex();
                EndPrimitive();
                break;
            }
            default:
                break;
        }
    }
}