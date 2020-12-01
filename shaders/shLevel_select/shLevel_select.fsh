//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

void main() {
    vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    if(mod(floor(v_vPosition.y), 2.0) <= 0.0001) {
        col.a /= 2.0;
    }
    gl_FragColor = col;
}
