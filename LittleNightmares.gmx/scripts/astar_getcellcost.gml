//astar_getcellcost(x,y)
var ar0,ar1;
ar0=floor(argument0/global.astarR_cellwidth)
ar1=floor(argument1/global.astarR_cellheight)
return(external_call(global.astarR_getcellcost,ar0,ar1));
