
enum IniType
{
	Real,
	String,
	Json // stringify on save, parse on load
}

global.ini_file_section = "GAME" // ini file section for all games


/// @description - returns the global var type if it exists - otherwise return Real
function get_global_data_type(var_details) 
{
	return struct_exists(var_details, "type") 
		? var_details.type
		: IniType.Real
}


///@description - get the list of all stored global variables and write each value into an ini file
function game_save_globals_to_ini()
{
	var ini_section = global.ini_file_section 
	var total_variables = array_length(global.stored_global_variables_list) 
	
	// iternate over every global variable and write it to an ini file
	for(i = 0; i < total_variables; i++)
	{
		var var_details = global.stored_global_variables_list[i]
		
		var global_var_name = var_details.name
		var global_var_type = get_global_data_type(var_details)
		
		var global_var_value = variable_global_get(global_var_name)
		
		// save data based on type
		if global_var_type == IniType.String
		{
			ini_write_string(ini_section, global_var_name, global_var_value)
		}
		
		if global_var_type == IniType.Real
		{
			ini_write_real(ini_section, global_var_name, global_var_value)
		}
		
		if global_var_type == IniType.Json
		{
			ini_write_string(ini_section, global_var_name, json_stringify(global_var_value))
		}
	}
}


///@description - get the list of all stored global variables and read each value from an ini file 
/// if value not found, use the initialised variable value
function game_load_globals_from_ini()
{
	var ini_section = global.ini_file_section 
	var total_variables = array_length(global.stored_global_variables_list) 
	
	// iternate over every global variable and load it from ini file
	for(i = 0; i < total_variables; i++)
	{
		var var_details = global.stored_global_variables_list[i]
		
		var global_var_name = var_details.name
		var global_var_type = get_global_data_type(var_details)
		
		var global_var_default_value = variable_global_get(global_var_name) // fall back to initial value if not found in file
		var global_var_value = undefined
		
		// DEBUG for finding undeclared globals (crash on load game):
		// if global_var_default_value == undefined { show_message(global_var_name) }
		
		// load data based on type
		if global_var_type == IniType.String
		{
			global_var_value = ini_read_string(ini_section, global_var_name, global_var_default_value)
		}
		
		if global_var_type == IniType.Real
		{
			global_var_value = ini_read_real(ini_section, global_var_name, global_var_default_value)
		}
		
		if global_var_type == IniType.Json
		{
			global_var_value = json_parse(ini_read_string(ini_section, global_var_name, global_var_default_value))
		}
		
		// set global!
		variable_global_set(global_var_name, global_var_value)
	}
}