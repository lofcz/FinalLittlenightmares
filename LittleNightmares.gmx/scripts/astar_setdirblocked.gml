//astar_setdirblocked(x,y,direction,blocked)
//direction as 0 (right) - 7 (down-right)
//blocked as true or false
var ar0,ar1,ar3;
if argument3=true{ar3=1}else{ar3=0}
ar0=floor(argument0/global.astarR_cellwidth)
ar1=floor(argument1/global.astarR_cellheight)
external_call(global.astarR_setdirblocked,ar0,ar1,argument2,ar3)
