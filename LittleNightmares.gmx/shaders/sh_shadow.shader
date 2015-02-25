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
const int num = 200;
const float val = 1.0/float(num);
const float Z = 2.0;

uniform vec2 pos;
uniform vec4 ambience;
uniform sampler2D lightmap;
uniform vec3 c1;
//uniform sampler2D heightmap;
void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    float tex;
    for(int i = num; i > 0;i--)
    {
        tex += (1.0-gl_FragColor.a)*(texture2D( gm_BaseTexture, v_vTexcoord*(1.0-((float(i)/float(num))/(0.5*Z)))
        +(float(i)/float(num)*pos/Z )).a/float(i));
    }
    tex = clamp(tex+(1.0-clamp(texture2D(lightmap,v_vTexcoord).a,0.0,1.0)),0.,1.);
    gl_FragColor.a = 1.0;//(1.0-tex)*texture2D(lightmap,v_vTexcoord).a+tex;
    gl_FragColor.rgb = mix(mix(gl_FragColor.rgb,c1,texture2D(lightmap,v_vTexcoord).a*(1.0-tex)/2.0),ambience.xyz,tex*ambience.w);
}

