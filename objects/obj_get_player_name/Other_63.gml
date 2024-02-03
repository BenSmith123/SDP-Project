	
var i_d = ds_map_find_value(async_load, "id")
if i_d != msg { exit }

if ds_map_find_value(async_load, "status")
{
	if ds_map_find_value(async_load, "result") != ""
	{
		var input_str = ds_map_find_value(async_load, "result")
			
		var is_not_string = !is_string(input_str) 
		var str_length = string_length(input_str)
		var try_again = is_not_string || str_length < 3 || str_length > 14
			
		if try_again
		{
			msg = get_string_async("Name:","")
			exit
		}
			
	    global.name = input_str
		instance_destroy()
	}
}
