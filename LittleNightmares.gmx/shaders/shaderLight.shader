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

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
const int num = 256;
const float i = 1.0;// intensity (should be between 1 and 0)
const float val = 1.0/float(num);

uniform vec3 pos;
uniform vec3 ambience;
uniform sampler2D lightmap;
uniform sampler2D backlight;
uniform sampler2D heightmap;
void main()
{
    vec2 lcoords;
    float shadow;
    float height = texture2D(heightmap,v_vTexcoord).r-(1.0-pos.z);
    for(int Z=0;Z<num;Z++)
        {
            shadow += clamp(texture2D(heightmap,v_vTexcoord * (1.0-(float(Z)*val)*(i))
            +(float(Z)*val*pos.xy*i)).r-float(Z)*val-height,0.0,1.0);
        }
    gl_FragColor.rgb = mix(texture2D(gm_BaseTexture,v_vTexcoord).rgb , ambience.rgb * texture2D(gm_BaseTexture,v_vTexcoord).rgb,
    vec3(clamp(shadow+texture2D(backlight,v_vTexcoord).a-texture2D(lightmap,v_vTexcoord).a,0.0,1.0)));;
    gl_FragColor.a = texture2D(gm_BaseTexture,v_vTexcoord).a;
}

