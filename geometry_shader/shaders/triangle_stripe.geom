#version 450 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 6) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {
	for (int i = 0; i < gl_in.length(); i++) {
		outColor = inColor[i];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[i].gl_Position;
		EmitVertex();
	}
	EndPrimitive();

	for (int i = 0; i < gl_in.length(); i++) {
		outColor = inColor[i];
		gl_Position = gl_in[i].gl_Position;
		gl_Position.x += 0.5;
		EmitVertex();
	}
	EndPrimitive();
}