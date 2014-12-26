Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.51,0.61,0.01,0);
part_type_scale(particle1,1,1.15);
part_type_color3(particle1,16777088,16711680,4194304);
part_type_alpha3(particle1,1,0.71,0.05);
part_type_speed(particle1,2.16,3.97,0.13,0);
part_type_direction(particle1,0,359,-1,10);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,359,0,10,1);
part_type_blend(particle1,1);
part_type_life(particle1,56,66);
part_system_depth(Sname,-100)
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,random_range(0,1));
