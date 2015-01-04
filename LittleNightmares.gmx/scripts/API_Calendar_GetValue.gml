    external_call(global.external_api_calendar_readvalues,argument0);
    Calendar_Year = external_call(global.external_api_calendar_getvalue,0);
    Calendar_Month = external_call(global.external_api_calendar_getvalue,1);
    Calendar_DayOfWeek = external_call(global.external_api_calendar_getvalue,2);
    Calendar_Day = external_call(global.external_api_calendar_getvalue,3);
    Calendar_Hour = external_call(global.external_api_calendar_getvalue,4);
    Calendar_Minute = external_call(global.external_api_calendar_getvalue,5);
    Calendar_Second = external_call(global.external_api_calendar_getvalue,6);
    Calendar_Milliseconds = external_call(global.external_api_calendar_getvalue,7);
