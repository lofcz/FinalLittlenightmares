if (mode = 1)
{
if (m = 1)
        {
         if (image_xscale < 1.2) 
            {
             image_xscale += 0.01
             image_yscale = image_xscale
            }
         else {m = 2}
        }
        
      if (m = 2)
        {
         if (image_xscale > 1) 
            {
             image_xscale -= 0.01
             image_yscale = image_xscale
            }
         else {m = 1}
        }
}
if (mode = 2)
   {
   image_alpha -= 0.01
   depth = -88888888;
   if (spd< 20)
      {
        spd += 1
      }
    image_xscale = 1;
    image_yscale = 1;
    if (distance_to_point(view_xview+60,view_yview+680) > 2)
    {
    move_towards_point(view_xview+60,view_yview+680,spd);
    }
    else {instance_destroy()}
   }
