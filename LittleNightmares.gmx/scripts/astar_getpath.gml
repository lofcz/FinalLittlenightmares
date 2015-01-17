//astar_getpath(startx,starty,endx,endy)
var ar0,ar1,ar2,ar3,pathstring,path;
ar0=floor(argument0/global.astarR_cellwidth)
ar1=floor(argument1/global.astarR_cellheight)
ar2=floor(argument2/global.astarR_cellwidth)
ar3=floor(argument3/global.astarR_cellheight)
pathstring=external_call(global.astarR_getpath,ar0,ar1,ar2,ar3)
path=true
if pathstring!=''{
pathstring=string_replace_all(pathstring,"a(",")astar_addpoint(");
pathstring=string_replace_all(pathstring,"e(","astar_addpoint(");
pathstring=string_replace_all(pathstring,"b(",")astar_endpath(");
global.astarR_path=path_add()
//execute_string(pathstring)}else{path=false}
}
if path=true{return(global.astarR_path);}else{return('')}
