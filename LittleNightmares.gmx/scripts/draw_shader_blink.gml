/// draw_shader_blink()
if (oPlayer.spell_on = 1 && oPlayer.vision_selected = "vision_violet")
   {
   shader_set(shaderBlink);        
    
        // NOTE: SIN() will give 1 to -1. The -1 will make the image seem "darker"
        var s = sin( degtorad(lerp_value) );
        lerp_value+=5;
        if( lerp_value>360 ) lerp_value-=360;
    
        // lerp to WHITE (1,1,1)
        shader_set_uniform_f(colour_to_find, 1,1,1, s );       
        draw_self()          
       shader_reset()
   }
else {draw_self()}

