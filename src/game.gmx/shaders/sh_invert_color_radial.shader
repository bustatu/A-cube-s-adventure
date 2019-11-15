//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Invert Color Shader, Radial Mode
//
// GOOD to remember: values are always from 0.f-1.f
uniform float u_vParams;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main(){
    ///Get original colour
    vec4 OC=v_vColour*texture2D(gm_BaseTexture,v_vTexcoord);
    ///Apply inverted color to fragment
    if((v_vTexcoord.x-0.5)*(v_vTexcoord.x-0.5)+0.7*(v_vTexcoord.y-0.5)*(v_vTexcoord.y-0.5)<=u_vParams){
        gl_FragColor=vec4(1.0-OC.r,1.0-OC.g,1.0-OC.b,1);
    }
    else{
        gl_FragColor=OC;
    }
}
