// make the particle system
  ps = part_system_create();

  // the firework particles
  pt1 = part_type_create();
  part_type_shape(pt1,pt_shape_flare);
  part_type_size(pt1,0.1,0.2,0,0);
  part_type_speed(pt1,0.5,4,0,0);
  part_type_direction(pt1,0,360,0,0);
  part_type_color1(pt1,c_red);
  part_type_alpha2(pt1,1,0.4);
  part_type_life(pt1,20,30);
  part_type_gravity(pt1,0.2,270);

  // the boulder
  pt2 = part_type_create();
  part_type_shape(pt2,pt_shape_sphere);
  part_type_size(pt2,0.2,0.2,0,0);
  part_type_speed(pt2,10,14,0,0);
  part_type_direction(pt2,80,100,0,0);
  part_type_color2(pt2,c_white,c_gray);
  part_type_life(pt2,30,60);
  part_type_gravity(pt2,0.2,270);
  part_type_death(pt2,150,pt1);    

  // create the emitter
  em = part_emitter_create(ps);
  part_emitter_region(ps,em,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
  part_emitter_stream(ps,em,pt2,-4);   
