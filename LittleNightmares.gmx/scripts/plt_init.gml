/// plt_init()

/*
Načte dynamické kolekce enginu

*/
globalvar plt;
plt = external_define("PlatinumEngine2.dll",  "plt_multiply", dll_cdecl, ty_real, 2, ty_real, ty_real);

