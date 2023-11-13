// this case show that primitive topology only effect in vertices emitted from the same primitive
#version 450 core

layout(lines) in;
layout(triangle_strip, max_vertices = 4) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {

	// point 0 of line primitive
	outColor = inColor[0];
	outColor.x = outColor.x + 1.0;
	gl_Position = gl_in[0].gl_Position;
    gl_Position.x = gl_Position.x - 0.1;
	gl_Position.y = gl_Position.y - 0.1;
	EmitVertex();

	outColor = inColor[0];
	outColor.y = outColor.y + 1.0;
	gl_Position = gl_in[0].gl_Position;
    gl_Position.x = gl_Position.x - 0.1;
	gl_Position.y = gl_Position.y + 0.1;
	EmitVertex();

	outColor = inColor[0];
	outColor.z = outColor.z + 1.0;
	gl_Position = gl_in[1].gl_Position;
    gl_Position.x = gl_Position.x + 0.1;
	gl_Position.y = gl_Position.y - 0.1;
	EmitVertex();

	outColor = inColor[1];
	outColor.x = outColor.x + 1.0;
	gl_Position = gl_in[1].gl_Position;
    gl_Position.x = gl_Position.x + 0.1;
	gl_Position.y = gl_Position.y + 0.1;
	EmitVertex();

	EndPrimitive();

}