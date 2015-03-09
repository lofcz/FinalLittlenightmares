Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_explosion);
part_type_size(particle1,0.50,0.80,-0.01,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,16384,32768,65280);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,1,4,-0.01,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,60,60);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,30);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_smoke);
part_type_size(particle2,0.10,0.30,0,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,8421376,4227072,4210688);
part_type_alpha2(particle2,1,0);
part_type_speed(particle2,1,6,-0.10,0);
part_type_direction(particle2,0,359,0,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,60,60);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle2,20);

particle3 = part_type_create();
part_type_shape(particle3,pt_shape_disk);
part_type_size(particle3,0.10,0.10,0,0);
part_type_scale(particle3,1,1);
part_type_color3(particle3,8421376,4227072,16711680);
part_type_alpha2(particle3,1,0);
part_type_speed(particle3,1,3,0.03,0);
part_type_direction(particle3,0,359,0,0);
part_type_gravity(particle3,0,270);
part_type_orientation(particle3,0,0,0,0,1);
part_type_blend(particle3,1);
part_type_life(particle3,60,60);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle3,25);


