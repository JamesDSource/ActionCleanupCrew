// Dissolves a sprite by cutting it off vertically based on the percent
// Creates a line of pixes mixed with orange at the cutoff point
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float percent;
uniform float texel_height;
uniform float top;
uniform float bottom;

void main() {
	float mix_weight = 0.2;
    vec4 color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	float height = bottom - top;
	if((v_vTexcoord.y - top)/height <= percent) {
		color.a = 0.0;
	}
	else if((v_vTexcoord.y - texel_height - top)/height <= percent && percent > 0.0) {
		mix_weight = 0.6;
	}
	color.rgb = mix(color.rgb, vec3(0.993, 0.404, 0.227), mix_weight);	
	gl_FragColor = color;
}