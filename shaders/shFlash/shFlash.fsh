//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float percent;

void main() {
	vec4 base_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 mod_color = vec4(mix(base_color.r, 1.0, percent), mix(base_color.g, 1.0, percent), mix(base_color.b, 1.0, percent), base_color.a);
	gl_FragColor = mod_color;
}
