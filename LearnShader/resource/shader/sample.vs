attribute vec3 pos;
attribute vec2 texcoord;
attribute vec3 normal;

uniform mat4 M;
uniform mat4 P;
uniform mat4 V;

varying vec2 V_Texcoord;
void main()
{
	V_Texcoord=texcoord;
	gl_Position=P*V*M*vec4(pos,1.0);
}