#version 140
out vec4 frag_color;

in vec3 var_ray;
uniform samplerCube tex0;

void main()
{
	vec3 ray = normalize(var_ray);
	//frag_color = vec4(pow(texture(tex0, ray).xyz, vec3(1.0/2.2)), 1.0);
	frag_color = vec4(texture(tex0, ray).xyz, 1.0);
}