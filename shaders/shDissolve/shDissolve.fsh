// Dissolves a sprite by cutting it off with a mask
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 uv_origin;
uniform vec2 uv_size;

uniform sampler2D mask;
uniform vec2 mask_uv_origin;
uniform vec2 mask_uv_size;

uniform float dissolve_percent;
uniform vec3 dissolve_rim_color;

void main() {
	float tolerance = 0.1;
	float dissolve_percent_ext = dissolve_percent + dissolve_percent*tolerance;
	
    vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
    
    vec2 percent = vec2((v_vTexcoord.x - uv_origin.x)/uv_size.x, (v_vTexcoord.y - uv_origin.y)/uv_size.y);
    
    vec2 mask_coords = vec2(mask_uv_origin.x + mask_uv_size.x*percent.x, mask_uv_origin.y + mask_uv_size.y*percent.y);
    float mask_val = texture2D(mask, mask_coords).r;
    //mask_val = smoothstep(mask_val, mask_val + tolerance, dissolve_percent_ext);
    
    float alpha = step(mask_val, dissolve_percent_ext);
    float weight = step(mask_val + 0.2*tolerance, dissolve_percent_ext);
    vec3 rim_col = mix(dissolve_rim_color, base_col.rgb, weight);
    
    
    gl_FragColor = vec4(rim_col, base_col.a*alpha);
}