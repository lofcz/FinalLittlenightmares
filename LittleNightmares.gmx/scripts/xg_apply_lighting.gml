///xg_apply_lighting( light x,light y,light z, ambience color, backlight texture)
shader_set(sh_shadow)
var XGr = colour_get_red(argument3)/255;
var XGg = colour_get_green(argument3)/255;
var XGb = colour_get_blue(argument3)/255;
shader_set_uniform_f(XGpos,(argument0)/XGw,(argument1)/XGh,argument2)
shader_set_uniform_f(XGambience,XGr,XGg,XGb)//Background color (RGB)
texture_set_stage(XGlightmap,surface_get_texture(XGls))
texture_set_stage(XGbacklight,argument4)
texture_set_stage(XGheight,surface_get_texture(XGdhs))
draw_surface(XGdds,0,0)
shader_reset()