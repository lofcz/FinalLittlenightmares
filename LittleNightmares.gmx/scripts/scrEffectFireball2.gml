Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.40,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,c_yellow,c_orange,c_red);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,2,3.50,-0.01,0.40);
part_type_direction(particle1,point_direction(x,y,oPlayer.x,oPlayer.y)-30,point_direction(x,y,oPlayer.x,oPlayer.y)+30,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,5,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,40);
part_system_depth(Sname,0)
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,irandom_range(1,1));
