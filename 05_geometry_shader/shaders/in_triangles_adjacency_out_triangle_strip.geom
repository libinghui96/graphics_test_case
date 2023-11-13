// EndPrimitives will be insert implicitly when EmitVertex from different Prmitives
#version 450 core

layout(triangles_adjacency) in;
layout(triangle_strip, max_vertices = 12) out;

layout(location = 0) in vec3 inColor[];
layout(location = 0) out vec3 outColor;

void main() {

    if (gl_PrimitiveIDIn %2 == 0) {
		outColor = inColor[0];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[0].gl_Position;
		gl_Position.x = gl_Position.x + 0.1;
		gl_Position.y = gl_Position.y - 0.1;
		EmitVertex();

		outColor = inColor[0];
		outColor.y = outColor.y + 1.0;
		gl_Position = gl_in[0].gl_Position;
		gl_Position.x = gl_Position.x + 0.1;
		gl_Position.y = gl_Position.y + 0.1;
		EmitVertex();

		outColor = inColor[1];
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

		outColor = inColor[2];
		outColor.z = outColor.z + 1.0;
		gl_Position = gl_in[2].gl_Position;
		gl_Position.y = gl_Position.y - 0.1;
		EmitVertex();

		outColor = inColor[2];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[2].gl_Position;
		gl_Position.y = gl_Position.y + 0.1;
		EmitVertex();
	} else {
		outColor = inColor[3];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[3].gl_Position;
		gl_Position.x = gl_Position.x - 0.1;
		gl_Position.y = gl_Position.y - 0.1;
		EmitVertex();

		outColor = inColor[3];
		outColor.y = outColor.y + 1.0;
		gl_Position = gl_in[3].gl_Position;
		gl_Position.x = gl_Position.x + 0.1;
		gl_Position.y = gl_Position.y - 0.1;
		EmitVertex();

		outColor = inColor[4];
		outColor.z = outColor.z + 1.0;
		gl_Position = gl_in[4].gl_Position;
		gl_Position.x = gl_Position.x - 0.1;
		gl_Position.y = gl_Position.y + 0.1;
		EmitVertex();

		outColor = inColor[4];
		outColor.x = outColor.x + 1.0;
		gl_Position = gl_in[4].gl_Position;
		gl_Position.x = gl_Position.x + 0.1;
		gl_Position.y = gl_Position.y + 0.1;
		EmitVertex();

		outColor = inColor[5];
		outColor.y = outColor.y + 1.0;
		gl_Position = gl_in[5].gl_Position;
		gl_Position.x = gl_Position.x - 0.1;
		EmitVertex();

		outColor = inColor[5];
		outColor.z = outColor.z + 1.0;
		gl_Position = gl_in[5].gl_Position;
		gl_Position.x = gl_Position.x + 0.1;
		EmitVertex();
	}

	EndPrimitive();

}