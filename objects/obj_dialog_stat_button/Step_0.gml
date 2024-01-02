
current_glob_value = variable_global_get(global_var_name)

if is_plus_button
{
	disabled = global.stat_points == 0
}
else
{
	disabled = current_glob_value <= min_value
	sprite_index = spr_button_bg_3
}