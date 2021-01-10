//
// Shader for doing dither light
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform vec3 dark_color;

void main() {
    vec4 base_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
    vec4 new_color = vec4(dark_color, base_color.a);
    
	float x_pos = floor(v_vPosition.x);
	float y_pos = floor(v_vPosition.y);
    if(base_color.r == 1.0) { // Two step from light
        if(mod(x_pos, 2.0) == 0.0 && mod(y_pos, 2.0) != 0.0) {
            new_color.a = 0.0;
        }
    }
    else if(base_color.g == 1.0) { // One steps from light
        if((mod(x_pos, 2.0) == 0.0 && mod(y_pos, 2.0) != 0.0) || (mod(x_pos, 2.0) != 0.0 && mod(y_pos, 2.0) == 0.0)) {
            new_color.a = 0.0;
        }
    }
    else if(base_color.b == 1.0) { // Complete Light
        new_color.a = 0.0;
    }
	else { // Complete darkness
	    if(mod(x_pos, 10.0) == 0.0 && mod(y_pos, 10.0) == 0.0) {
            new_color.a = 0.0;
        }
	}
    
    gl_FragColor = new_color;
}