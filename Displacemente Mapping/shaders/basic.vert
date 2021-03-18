#version 410 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 texCoord;

uniform mat4 world;
uniform mat4 camera;
uniform mat4 project;
out vec2 TexCoord;

void main()
{
    //gl_Position = vec4(position, 1.0);
    gl_Position = project * camera * world * vec4(position, 1.0);
    TexCoord = texCoord;    // pass the texture coords on to the fragment shader
}
