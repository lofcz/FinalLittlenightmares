//astar_pathcenter(path,centered,speed,endaction,absolute)
var centeredpath,xshift,yshift;
if argument1=true{
centeredpath=path_duplicate(argument0)
xshift=(global.astarR_cellwidth/2)-(sprite_width/2)
yshift=(global.astarR_cellheight/2)-(sprite_height/2)
path_shift(centeredpath,xshift,yshift)
path_start(centeredpath,argument2,argument3,argument4)
}else{
path_start(argument0,argument2,argument3,argument4)
}
