///xg_add_background( background, x, y, angle, blend, heightmap background, dynamic)
if argument7
{
    surface_set_target( XGds)
    draw_background_ext(argument0,argument1,argument2,1,1,argument3,-1,1)
    surface_reset_target()
    surface_set_target( XGhs)
    draw_background_ext(argument6,argument1,argument2,1,1,argument3,argument4,1)
    surface_reset_target()
}
else
{
    surface_set_target( XGdds)
    draw_background_ext(argument0,argument1,argument2,1,1,argument3,-1,1)
    surface_reset_target()
    surface_set_target( XGdhs)
    draw_background_ext(argument6,argument1,argument2,1,1,argument3,argument4,1)
    surface_reset_target()
}
