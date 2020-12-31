//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float start_angle;
uniform float end_angle;
uniform vec2 axis_point;

void main() {
    vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    if(col.a > 0.0 && start_angle != end_angle) {
		vec2 offset_from_axis = vec2(v_vPosition.x - axis_point.x, v_vPosition.y - axis_point.y);
	    float angle = degrees(atan(offset_from_axis.y, offset_from_axis.x));
	    if(angle < 0.0) {
	        angle = abs(angle);
	    }
	    else {
	        angle = 180.0 + (180.0 - angle);
	    }
   
	    float angle_end_point = end_angle - start_angle;
	    angle -= start_angle;
    
	    if(angle < 0.0) {
			angle += 360.0;
		}
	    if(angle_end_point < 0.0) {
			angle_end_point += 360.0;
		}
    
	    if(angle >= angle_end_point) {
			//float average = (col.r + col.g + col.b)/3.0;
			//col.rgb = vec3(average);
			col.a = 0.0;
	    }
	}
    gl_FragColor = col;
}
