#version 330 core

in vec3 vertex;
in vec3 normal;

out vec4 vertexFS;
out vec3 normalFS;

in vec3 matamb;
in vec3 matdiff;
in vec3 matspec;
in float matshin;

out vec3 matambFS;
out vec3 matdiffFS;
out vec3 matspecFS;
out float matshinFS;

uniform mat4 proj;
uniform mat4 view;
uniform mat4 TG;

// Valors per als components que necessitem dels focus de llum
vec3 colFocus = vec3(0.8, 0.8, 0.8);
vec3 llumAmbient = vec3(0.2, 0.2, 0.2);
vec3 posFocus = vec3(1, 1, 1);  // en SCA

void main()
{	
  vec4 vSCO = view * TG * vec4(vertex, 1);
  mat3 NormalMatrix = inverse(transpose(mat3(view*TG)));
  vec3 n = NormalMatrix * normal;

  gl_Position = proj * view * TG * vec4 (vertex, 1.0);

  vertexFS = vSCO;
  normalFS = n;
  
  matambFS = matamb;
  matdiffFS = matdiff;
  matspecFS = matspec;
  matshinFS = matshin;
}
