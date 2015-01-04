/// plt_multiply(real a, real b)

/*
Vynásobí daná číslo s přesností na 16 desetinných čisel (místo gm 2)

*/
def = external_define("PlatinumEngine2.dll", "plt_multiply", dll_cdecl, ty_real, 2, ty_real, ty_real)
return external_call(def,argument0,argument1);

