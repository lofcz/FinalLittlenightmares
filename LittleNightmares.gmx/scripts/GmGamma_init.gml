//Define the only 2 function calls
global.SetGamma = external_define("GmGammaDll.dll","GMGammaSet",dll_stdcall,ty_real,1,ty_real);
global.ResetGamma = external_define("GmGammaDll.dll","GMGammaReset",dll_stdcall,ty_real,0);
//End define