#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D texture1;

float near = 0.1;
float far = 100.0;

float LineariseDepth(float depth)
{
    float ndc = depth * 2.0 - 1.0;
    float linearDepth = (2.0 * near * far) / (far + near - ndc * (far - near));
    return linearDepth;
}

void main()
{    
    float depth = LineariseDepth(gl_FragCoord.z) / far; //Divide by far for demonstration
    FragColor = vec4(vec3(depth), 1.0);
}