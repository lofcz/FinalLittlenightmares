Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.1,0.15,0,0.01);
part_type_scale(particle1,1,1);
part_type_color3(particle1,12615680,16711680,10485760);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,4,8,0,0);
part_type_direction(particle1,0,359,0,5);
part_type_gravity(particle1,0.50,270);
part_type_orientation(particle1,0,359,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,90,120);
part_system_depth(Sname,1)
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,0,1024,-100,0,0,0);
part_emitter_burst(Sname,emitter1,particle1,irandom_range(2,3));


