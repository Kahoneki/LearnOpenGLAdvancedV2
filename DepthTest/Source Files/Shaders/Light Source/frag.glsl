#version 330 core

uniform vec3 lightColour;

out vec4 FragColour;

void main()
{
	FragColour = vec4(lightColour, 1.0);
}