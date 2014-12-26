Sname=part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.17,0.67,0.03,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,65280,65535,16711680);
part_type_alpha3(particle1,1,0.50,0.04);
part_type_speed(particle1,2.87,3.53,0.30,0);
part_type_direction(particle1,0,359,10,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,53,72);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,10);
/*
particle2 = part_type_create();
part_type_shape(particle2,pt_shape_star);
part_type_size(particle2,0.10,0.60,0.03,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,65535,8388863,16744703);
part_type_alpha3(particle2,1,1,1);
part_type_speed(particle2,1,1,0,0);
part_type_direction(particle2,0,359,0,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,60,60);
part_system_depth(Sname,-100)
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle2,5);
