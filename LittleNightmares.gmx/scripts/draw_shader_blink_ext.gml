///draw_shader_blink_ext(r,g,b)

   r = argument0
   g = argument1
   b = argument2
   shader_set(shaderBlink);        
    
        // NOTE: SIN() will give 1 to -1. The -1 will make the image seem "darker"
        var s = sin( degtorad(lerp_value) );
        lerp_value+=5;
        if( lerp_value>360 ) lerp_value-=360;
    
        // lerp to WHITE (1,1,1)
        shader_set_uniform_f(colour_to_find, r,g,b, s );       
        draw_self()          
       shader_reset()

