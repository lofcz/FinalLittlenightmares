/// inventory_delete(item,number)

item = argument0
number = argument1

if (number > 1)
   {
   repeat(number)
      {
      if (  oInventory.item[0] = item ) {oInventory.item[0] = "" oInventory.item_spr[0] = "" oInventory.item_popis[0] = ""}
      else  if (  oInventory.item[1] = item ) {oInventory.item[1] = "" oInventory.item_spr[1] = "" oInventory.item_popis[1] = ""}
      else  if (  oInventory.item[2] = item ) {oInventory.item[2] = "" oInventory.item_spr[2] = "" oInventory.item_popis[2] = ""}
       }
   }
else if (number = 1)
     {
     if (  oInventory.item[0] = item ) {oInventory.item[0] = "" oInventory.item_spr[0] = "" oInventory.item_popis[0] = ""}
      else  if (  oInventory.item[1] = item ) {oInventory.item[1] = "" oInventory.item_spr[1] = "" oInventory.item_popis[1] = ""}
      else  if (  oInventory.item[2] = item ) {oInventory.item[2] = "" oInventory.item_spr[2] = "" oInventory.item_popis[2] = ""}
     
     }
