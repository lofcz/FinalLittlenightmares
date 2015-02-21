Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.40,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,c_aqua,c_blue,c_blue);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,2,3.50,-0.01,0.40);
part_type_direction(particle1,direction-32,direction+30,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,5,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,10,15);
part_system_depth(Sname,0)
emitter1 = part_emitter_create(Sname);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_flare);
part_type_size(particle2,0.12,0.32,0.02,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,8460571,9349396,4534332);
part_type_alpha3(particle2,0.84,0.47,0.08);
part_type_speed(particle2,2.07,4.91,-0.50,0);
part_type_direction(particle2,0,359,-1,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,0);
part_type_blend(particle2,1);
part_type_life(particle2,20,30);


part_type_death(particle1,1,particle2);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,irandom_range(1,2));





