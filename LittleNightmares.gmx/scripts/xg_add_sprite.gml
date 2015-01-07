///xg_add_sprite( sprite, image_index, x, y, angle, blend, heightmap sprite, image_index, dynamic)
if argument8
{
    surface_set_target( XGdds)
    draw_sprite_ext(argument0,argument1,argument2,argument3,1,1,argument4,-1,1)
    surface_reset_target()
    surface_set_target( XGdhs)
    draw_sprite_ext(argument6,argument7,argument2,argument3,1,1,argument4,argument5,1)
    surface_reset_target()
}
else
{
    surface_set_target( XGds)
    draw_sprite_ext(argument0,argument1,argument2,argument3,1,1,argument4,-1,1)
    surface_reset_target()
    surface_set_target( XGhs)
    draw_sprite_ext(argument6,argument7,argument2,argument3,1,1,argument4,argument5,1)
    surface_reset_target()
}
