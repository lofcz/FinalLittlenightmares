    external_call(global.external_api_datetime_readvalues,argument0);
    Datetime_Year = external_call(global.external_api_datetime_getvalue,0);
    Datetime_Month = external_call(global.external_api_datetime_getvalue,1);
    Datetime_DayOfWeek = external_call(global.external_api_datetime_getvalue,2);
    Datetime_Day = external_call(global.external_api_datetime_getvalue,3);
    Datetime_Hour = external_call(global.external_api_datetime_getvalue,4);
    Datetime_Minute = external_call(global.external_api_datetime_getvalue,5);
    Datetime_Second = external_call(global.external_api_datetime_getvalue,6);
    Datetime_Milliseconds = external_call(global.external_api_datetime_getvalue,7);
