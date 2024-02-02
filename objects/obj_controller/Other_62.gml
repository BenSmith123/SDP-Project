
/****

// use this to debug network requests
if ds_map_find_value(async_load, "id") == post_request
{
    if ds_map_find_value(async_load, "status") == 0
    {
        global.aaa = ds_map_find_value(async_load, "result");
    }
    else
    {
        global.aaa = "null";
    }
}