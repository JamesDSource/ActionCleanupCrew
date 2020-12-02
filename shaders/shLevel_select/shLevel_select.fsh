//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float flicker;
uniform float odds;

void main() {
    vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    if(mod(floor(v_vPosition.y), 2.0) == odds) {
        col.a /= 1.5;
    }
    col.a += flicker;
    gl_FragColor = col;
}
