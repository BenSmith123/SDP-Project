
event_inherited()

title = $"{global.name}'s stats"

var button_left_x = dialog_center_x + 70
var button_right_x = dialog_center_x + 220

var stats_start_y = dialog_y_top+112
var stat_y = stats_start_y

var button_width = 32
var button_height = 32

var stats = 
[
	{
		global_var_name: "max_hp",
		min_value: 50,
		label: "Health"
	},
	{
		global_var_name: "max_hp",
		label: ""
	},
	{
		global_var_name: "attack",
		label: "Attack"
	},
	{
		global_var_name: "attack",
		label: ""
	},
	{
		global_var_name: "defence",
		label: "Defence"
	},
	{
		global_var_name: "defence",
		label: ""
	},
	{
		global_var_name: "accuracy",
		label: "Accuracy"
	},
	{
		global_var_name: "accuracy",
		label: ""
	},
	{
		global_var_name: "heal_amount",
		label: "Heal amount",
		min_value: 0
	},
	{
		global_var_name: "heal_amount",
		label: ""
	}
]

for (var i = 0; i < array_length(stats); i++)
{
	var is_plus_button = i % 2 == 1
	
	var x_pos = is_plus_button
		? button_right_x
		: button_left_x
	
	var button = instance_create(x_pos, stat_y, obj_dialog_stat_button)
	button.text = is_plus_button ? "+" : "-"
	button.is_plus_button = is_plus_button
	
	var stat_button = stats[i]

	button.label = stat_button.label
	
	button.global_var_name = stat_button.global_var_name
	
	// reset position every second button
	if is_plus_button
	{
		stat_y += 40
	}
	
}
