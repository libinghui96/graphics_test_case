// test gl_PrimitiveIDIn
#version 450 core

layout(lines) in;
layout(line_strip, max_vertices = 5) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {
	if (gl_PrimitiveIDIn % 2 == 0) {
		// point 0 of line primitive
		outColor = inColor[0];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[0].gl_Position;
		gl_Position.x = gl_Position.x + 0.1;
		EmitVertex();

		outColor = inColor[0];
		outColor.y = outColor.y + 1.0;
		gl_Position = gl_in[0].gl_Position;
		gl_Position.x = gl_Position.x - 0.1;
		EmitVertex();

		outColor = inColor[0];
		outColor.z = outColor.z + 1.0;
		gl_Position = gl_in[0].gl_Position;
		gl_Position.y = gl_Position.y - 0.1;
		EmitVertex();

		outColor = inColor[0];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[0].gl_Position;
		gl_Position.y = gl_Position.y + 0.1;
		EmitVertex();

		outColor = inColor[1];
		gl_Position = gl_in[1].gl_Position;
		EmitVertex();

		EndPrimitive();
	}
}