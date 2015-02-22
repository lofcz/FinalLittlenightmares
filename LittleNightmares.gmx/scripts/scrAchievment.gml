/// scrAchievment(name,text,id,[time/force],time/force])
name = "MISSING!";
text = "WRONG USED FUNCTION!";
idd = 0;
time = 200;
force = 0
if (argument_count > 0) {name = argument[0];}
if (argument_count > 1) {text = argument[1];}
if (argument_count > 2) {idd = argument[2];}
if (argument_count > 3) 
                   {
                   if (string_pos("t",argument[3]) = 1)
                      {
                       string_delete(argument[3],1,1)
                        time = real(argument[3]);
                      }
                      else {force = real(argument[3])}
                    
                   
                   }
if (argument_count > 4) 
                   {
                   if (string_pos("t",argument[4]) = 1)
                      {
                      if (time = 200)
                      {
                       string_delete(argument[4],1,1)
                        time = real(argument[4]);
                        }
                      }
                      else {if (force = 0) {force = real(argument[4])}}
                    
                   
                   }
ini_open(littlenightmares_ini);
show = ini_read_real("achievments",string(idd),0)
ini_write_real("achievments",string(idd),1);
ini_close();

if (show = 0 || force = 1)
{
ach = instance_create(view_xview,view_yview,oAchievment);
ach.name = name;
ach.text = text;
ach.time = time;
}
