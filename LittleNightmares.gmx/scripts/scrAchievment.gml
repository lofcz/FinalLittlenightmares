/// scrAchievment(name,text,id,prefix,[time/force],time/force])
name = "MISSING!";
text = "WRONG USED FUNCTION!";
idd = 0;
time = 200;
force = 0
prefix = "Získáno ocenění"
//********************************************************

if (argument_count > 0) {name = argument[0];}
if (argument_count > 1) {text = argument[1];}
if (argument_count > 2) {idd = argument[2];}
if (argument_count > 3) {prefix = argument[3];}


if (argument_count > 4) 
                   {
                   if (string_pos("t",argument[4]) = 1)
                      {
                       string_delete(argument[4],1,1)
                        time = real(argument[4]);
                      }
                      else {force = real(argument[4])}
                    
                   
                   }
if (argument_count > 5) 
                   {
                   if (string_pos("t",argument[5]) = 1)
                      {
                      if (time = 200)
                      {
                       string_delete(argument[5],1,1)
                        time = real(argument[5]);
                        }
                      }
                      else {if (force = 0) {force = real(argument[5])}}
                    
                   
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
ach.prefix = prefix;
}
