
if disabled { exit }

if is_plus_button
{
	var new_value = current_glob_value + 1
	variable_global_set(global_var_name, new_value)
}
else
{
	var new_value = current_glob_value - 1
	variable_global_set(global_var_name, new_value)
}


