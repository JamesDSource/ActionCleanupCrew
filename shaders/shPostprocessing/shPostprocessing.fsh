//
// Postprocessing shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float brightness;
uniform float gamma;
void main() {
	vec4 base_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 mod_color = vec4(pow(base_color.rgb, vec3(1.0/gamma)), base_color.a);
	mod_color.rgb = mod_color.rgb + vec3(brightness);
    gl_FragColor = mod_color;
}