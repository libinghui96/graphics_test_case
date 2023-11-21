#version 450 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

layout(location = 0) in vec4 inColor[];
layout(location = 1) in vec2 inTexture_uv[];
layout(location = 0) out vec4 outColor;
layout(location = 1) out vec2 outTexture_uv;

void main() {
	for (int i = 0; i < gl_in.length(); i++) {
		outColor = inColor[i];
		outColor.x = outColor.x + 1.0;
		outTexture_uv = inTexture_uv[i];
		gl_Position = gl_in[i].gl_Position;
		EmitVertex();
	}
	EndPrimitive();
}