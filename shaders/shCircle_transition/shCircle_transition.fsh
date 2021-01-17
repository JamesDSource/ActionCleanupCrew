//
// Circle shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float   circle_distance;
uniform float   fill;
uniform vec2    size;
uniform float   inverse;

void main() {
    vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
    vec2 cell_index = vec2(floor(v_vPosition.x/circle_distance), floor(v_vPosition.y/circle_distance));
    vec2 cell_pos = vec2(cell_index.x*circle_distance, cell_index.y*circle_distance);
    
    float weight = abs(inverse - (v_vPosition.x/size.x + v_vPosition.y/size.y)/2.0);
	weight = smoothstep(0.0, 1.0, weight);
    float fill_ext = fill + fill*weight;
    float fill_smooth = smoothstep(0.0, 1.0, fill_ext);
    
    float dist = distance(vec2(cell_pos.x + circle_distance/2.0, cell_pos.y + circle_distance/2.0), v_vPosition);
    if(dist > circle_distance*fill_smooth) {
        base_col.a = 0.0;
    }
    
    gl_FragColor = base_col;
}
