//dll_init();
//Returns: N/A
global.start_console = external_define("STDGM.dll","start_console",dll_cdecl,ty_real,0);
global.writeto_console = external_define("STDGM.dll","writeto_console",dll_cdecl,ty_real,2,ty_string,ty_real);
global.show_msg_win = external_define("STDGM.dll","show_message_win",dll_cdecl,ty_real,2,ty_string,ty_string);
global.shell_exe = external_define("STDGM.dll","execute_shell",dll_cdecl,ty_real,1,ty_string);
