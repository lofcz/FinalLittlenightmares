Snaem = part_system_create()

particle1 = part_type_create();
part_type_sprite(particle1,sprite68,0,0,0);
part_type_size(particle1,0.10,0.20,0,0);
part_type_scale(particle1,2.93,3.06);
part_type_color3(particle1,65535,2379027,33023);
part_type_alpha3(particle1,1,0.63,0);
part_type_speed(particle1,1,1.50,0.04,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,359,1,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,67,80);
part_system_depth(Sname,-100)           
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,1);


