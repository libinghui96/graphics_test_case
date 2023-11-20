#version 450 core

layout(triangles) in;
layout(line_strip, max_vertices = 3) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {
	float centric_x = (gl_in[0].gl_Position.x + gl_in[1].gl_Position.x + gl_in[2].gl_Position.x) / 3;
	float centric_y = (gl_in[0].gl_Position.y + gl_in[1].gl_Position.y + gl_in[2].gl_Position.y) / 3;

	outColor = inColor[0];
	gl_Position = gl_in[0].gl_Position;
	gl_Position.x = (gl_in[0].gl_Position.x + centric_x) / 2;
	gl_Position.y = (gl_in[0].gl_Position.y + centric_y) / 2;
	EmitVertex();

	outColor = inColor[1];
	gl_Position = gl_in[1].gl_Position;
	gl_Position.x = (gl_in[1].gl_Position.x + centric_x) / 2;
	gl_Position.y = (gl_in[1].gl_Position.y + centric_y) / 2;
	EmitVertex();

	outColor = inColor[2];
	gl_Position = gl_in[2].gl_Position;
	gl_Position.x = (gl_in[2].gl_Position.x + centric_x) / 2;
	gl_Position.y = (gl_in[2].gl_Position.y + centric_y) / 2;
	EmitVertex();

	EndPrimitive();

}