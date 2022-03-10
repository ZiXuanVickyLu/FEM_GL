
#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
out vec4 myColor;
void main()
{
	gl_Position = projection * view * model * vec4(aPos, 1.0f);
	myColor = vec4(aColor, 1.0f);
}