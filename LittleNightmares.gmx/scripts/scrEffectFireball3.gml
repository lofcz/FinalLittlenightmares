Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.40,0,0);
part_type_scale(particle1,random_range(0.8,1.5),random_range(0.8,1.5));
part_type_color3(particle1,c_yellow,c_orange,c_red);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,2,3.50,-0.01,0.40);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,random_range(0.1,0.3),90);
part_type_orientation(particle1,0,0,5,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,40);
part_system_depth(Sname,0)
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x-16,x+32,y-16,y+32,0,0);
part_emitter_burst(Sname,emitter1,particle1,irandom_range(1,2));
