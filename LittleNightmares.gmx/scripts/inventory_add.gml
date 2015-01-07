//Call:     inventory_add(itemID,quantity)
//Info:     Adds item(s) to the inventory. itemID is the ID
//          of the item to be added and quantity is the number
//          of that item you want to add.
//Event:    Any
//Returns:  Number of items that couldn't be added because
//          the inventory was full. For example, if you add
//          10 items and there's only 7 places left in the
//          inventory, it will return 3.
var itemno,number,newno;
newno=0
itemno=argument0
number=argument1
slots_free = oInventory.slots_free
slots_number = oInventory.slots_number;
var a;
if (item_stackable(itemno)=1) {
    var a;
    for (a=1 a<=slots_number a+=1) {
        if (global.inv_item[a,0]=itemno) {newno=a; global.inv_item[a,1]+=number; a=slots_number+1; instance_destroy()}
    }
    if (newno=0) {
        var b,lastno;
        lastno=0
        for (b=1 b<=slots_number b+=1) {
            if (global.inv_item[b,0]=0) {lastno=b; b=slots_number+1}
        }
        if (lastno=0) {
            return (1)
        } else {
         if (oInventory.slots_free > 0)
        {
        oInventory.slots_free-=1
            global.inv_item[lastno,0]=itemno
            global.inv_item[lastno,1]=number
            instance_destroy()
            }
        }
    }
} else {
    var lastno,n;
    lastno=0
    n=0
    repeat (number) {
    if (oInventory.slots_free > 0)
        {
        number -=1;
        oInventory.item_id = id
        with (oInventory) {event_perform(ev_user0,1)}
     oInventory.slots_free -= 1;
        n+=1
        var a;
        for (a=1 a<=slots_number a+=1) {
            if (global.inv_item[a,0]=0) {lastno=a; a=slots_number+1}
        }
        if (lastno=0) {
            return (number -n)
        } else {
            global.inv_item[lastno,0]=itemno
            global.inv_item[lastno,1]=1
        }
        if (number = 0) {instance_destroy()}
    }
}
}
return (0)
