varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 primary_color;
uniform vec3 secondary_color;

void main() {
	vec4 main_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	vec4 replacement_color = main_color;
	if(main_color.rgb == vec3(1.0, 1.0, 1.0)) {
		replacement_color.rgb = primary_color;	
	}
	else if (main_color.rgb == vec3(0.0, 0.0, 0.0)) {
		replacement_color.rgb = secondary_color;
	}
    gl_FragColor = replacement_color;
}
