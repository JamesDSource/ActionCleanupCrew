//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float angle_1;
uniform float angle_2;
uniform vec2 axis_point;

void main() {
    vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    vec2 offset_from_axis = vec2(v_vPosition.x - axis_point.x, v_vPosition.y - axis_point.y);
    float angle = degrees(atan(offset_from_axis.y, offset_from_axis.x));
    if(angle < angle_1 || angle > angle_2) {
       col.a = 0.0;
    }
    gl_FragColor = col;
}
