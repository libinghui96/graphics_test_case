#version 450 core

layout(triangles) in;
layout(line_strip, max_vertices = 3) out;

layout(location = 0) in vec4 inColor[];
layout(location = 1) in vec2 inTexture_uv[];
layout(location = 0) out vec4 outColor;
layout(location = 1) out vec2 outTexture_uv;

void main() {

	outColor = inColor[0];
	outTexture_uv = inTexture_uv[0];
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();

	outColor = inColor[1];
	outTexture_uv = inTexture_uv[1];
	gl_Position = gl_in[1].gl_Position;
	EmitVertex();

	outColor = inColor[2];
	outTexture_uv = inTexture_uv[2];
	gl_Position = gl_in[2].gl_Position;
	EmitVertex();

	EndPrimitive();

}