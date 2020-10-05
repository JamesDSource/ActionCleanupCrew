//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_vPosition;
varying vec4 v_vColour;

uniform vec2 bottom_left;
uniform vec2 top_right;

void main() {
	vec4 color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	float dist = distance(v_vPosition, bottom_left);
    color.rgb -= vec3(1.2, 1.2, 0.9)/(dist/100.0);
	dist = distance(v_vPosition, top_right);
	color.rgb += vec3(1.2, 1.2, 0.7)/(dist/40.0);
	gl_FragColor = color;
}
