///xg_start( view width, view height)
globalvar XGdhs,XGhs,XGls,XGds,XGdds;
XGdhs = surface_create( argument0, argument1);//dynamic heightmap
XGhs = surface_create( argument0, argument1);//heightmap
XGls = surface_create( argument0, argument1);//lightmap
XGds = surface_create( argument0, argument1);//diffusemap
XGdds = surface_create( argument0, argument1);//dynamic diffusemap
globalvar XGpos,XGambience,XGlightmap,XGbacklight,XGheight;
XGpos = shader_get_uniform(sh_shadow,"pos");
XGambience = shader_get_uniform(sh_shadow,"ambience");
XGlightmap = shader_get_sampler_index(sh_shadow,"lightmap")
XGbacklight = shader_get_sampler_index(sh_shadow,"backlight")
XGheight = shader_get_sampler_index(sh_shadow,"heightmap")