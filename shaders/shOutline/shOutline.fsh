//
// Creates an outline
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 outline_color;
uniform vec2 texel_size;
uniform vec4 uv_boundries;

vec4 get_transformed_texel(float u, float v) {
    vec2 new_coords = v_vTexcoord;
    new_coords.x = clamp(new_coords.x + u*texel_size.x, uv_boundries.x, uv_boundries.z);
    new_coords.y = clamp(new_coords.y + v*texel_size.y, uv_boundries.y, uv_boundries.w);
    return texture2D(gm_BaseTexture, new_coords);
}

void main() {
    vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    if(base_col.a == 0.0) {
        base_col.a += get_transformed_texel(1.0, 0.0).a;
        base_col.a += get_transformed_texel(-1.0, 0.0).a;
        base_col.a += get_transformed_texel(0.0, 1.0).a;
        base_col.a += get_transformed_texel(0.0, -1.0).a;
        
        base_col.rgb = outline_color;
    }
    gl_FragColor = base_col;
}
