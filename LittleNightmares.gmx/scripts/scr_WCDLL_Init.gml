/*******************************************************/
/* Window Control Dll for GM
/* -----------------------------
/* By GMJAB(www.Midx.co.nr)
/*******************************************************/
WC_DLL = "WindowControl.dll";
FILENAME=filename_name(parameter_string(0));
global._WCDLL_DISPLAYWIN=external_define(WC_DLL,"WC_DisplayWindow",dll_cdecl,ty_real,2,ty_real,ty_real);
global._WCDLL_FINDWIN=external_define(WC_DLL,"WC_FindWindow",dll_cdecl,ty_real,1,ty_string);
global.TASKBARHANDLE=scr_WCDLL_FindWindow(string_copy(FILENAME,'',string_length(FILENAME)-4));
