//
// A shader meant to speed up the process of counting pixels on a surface
//
varying vec4 v_vColour;

uniform sampler2D surface;
uniform vec2 texel_size;
uniform vec2 cell_origin;
uniform float cell_size;
uniform float alpha_threashold;

void main() {
    vec4 col = vec4(0.0, 0.0, 0.0, 1.0);
    
    // Loop through the texels and get the amount of pixels
    // above an alpha threashold
    float count = 0.0;
    vec2 starting_point = vec2(cell_origin.x*cell_size, cell_origin.y*cell_size);
	vec2 ending_point = vec2((cell_origin.x+1.0)*cell_size - 1.0, (cell_origin.y+1.0)*cell_size - 1.0);
	
	for(float i = starting_point.x; i <= ending_point.x; i++) {
        for(float j = starting_point.y; j <= ending_point.y + cell_size; j++) {
            vec4 tex_col = texture2D(surface, vec2(i*texel_size.x, j*texel_size.y));
            if(tex_col.y >= alpha_threashold) {
                count++;
            }
        }
    }
    
    // Setting the red channel to the amount of pixels at the threashold
    // this can be retreaved later in the cpu
    col.r = count/pow(cell_size, 2.0);
    
    gl_FragColor = col; //texture2D( gm_BaseTexture, v_vTexcoord );
}
