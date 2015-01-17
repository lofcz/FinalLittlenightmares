//astar_getobstacle(x,y)
var ar0,ar1;
ar0=floor(argument0/global.astarR_cellwidth)
ar1=floor(argument1/global.astarR_cellheight)
return(external_call(global.astarR_getobstacle,ar0,ar1));
