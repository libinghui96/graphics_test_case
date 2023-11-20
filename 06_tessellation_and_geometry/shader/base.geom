#version 450 core

layout(triangles) in;
layout(line_strip, max_vertices = 3) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {

	outColor = inColor[0];
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();

	outColor = inColor[1];
	gl_Position = gl_in[1].gl_Position;
	EmitVertex();

	outColor = inColor[2];
	gl_Position = gl_in[2].gl_Position;
	EmitVertex();

	EndPrimitive();

}