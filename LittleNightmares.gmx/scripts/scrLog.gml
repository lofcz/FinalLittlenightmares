/// scrLog(text,color)
text = argument0;
clr = argument1;


i = instance_create(oPlayer.x,oPlayer.y-60,oLog);
i.text = text;
i.color = clr;
