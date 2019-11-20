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
// Black and white shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 v_Colour1;
uniform vec4 v_Colour2;

void main()
{
    vec4 OC=v_vColour*texture2D(gm_BaseTexture,v_vTexcoord);
    float o_c=(OC.r+OC.g+OC.b)/3.0;
    OC.r=min(v_Colour1.r,v_Colour2.r)+o_c*(max(v_Colour1.r,v_Colour2.r)-min(v_Colour1.r,v_Colour2.r));
    OC.g=min(v_Colour1.g,v_Colour2.g)+o_c*(max(v_Colour1.g,v_Colour2.g)-min(v_Colour1.g,v_Colour2.g));
    OC.b=min(v_Colour1.b,v_Colour2.b)+o_c*(max(v_Colour1.b,v_Colour2.b)-min(v_Colour1.b,v_Colour2.b));
    gl_FragColor = OC;
}

