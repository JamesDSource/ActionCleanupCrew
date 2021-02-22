varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform int active;

void main() {
	vec4 base_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	if(active == 1) {
		float average = (base_color.r + base_color.g + base_color.b)/3.0;
		gl_FragColor = vec4(vec3(average), base_color.a);
	}
	else {
		gl_FragColor = base_color;
	}
}