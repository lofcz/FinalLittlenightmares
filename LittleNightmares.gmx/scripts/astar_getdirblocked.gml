//astar_getdirblocked(x,y,dir)
var ar0,ar1;
ar0=floor(argument0/global.astarR_cellwidth)
ar1=floor(argument1/global.astarR_cellheight)
return(external_call(global.astarR_getdirblocked,ar0,argument2));
