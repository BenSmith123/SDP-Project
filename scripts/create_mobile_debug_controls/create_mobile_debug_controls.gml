function create_mobile_debug_controls()
{
	
	if instance_exists(obj_button_mobile_debug) { instance_destroy(obj_button_mobile_debug); exit }

	// NOTE - anonymous functions declared as values of a struct act from the scope of that struct, not the current instance
	// this will cause crashes when creating instances because the struct has no depth, use 'with' keyword when creating instances

	var debug_controls = 
	[
		{
			text: "Reboot game (keep progress)",
			action: function() { game_restart() }
		},
		{
			text: "Reset game (lose progress)",
			action: function() { reset_game() }
		},
		{
			text: "< Previous Map",
			action: function() { move_to_map(true) }
		},
		{
			text: "Next Map >",
			action: function() { move_to_map() }
		},
		{
			text: "Level up",
			action: function() { with (obj_player) { level_up() } }
		},
		{
			text: "Test haptics",
			action: function() 
			{
				var duration = choose(5, 300)
				var strength = choose(10, 255)
				Vibrate(duration, strength) // TODO - replace with script
				global.name = ($"{duration} | {strength}")
			}
		},

		{
			text: "Debugging mode",
			action: function() { global.show_debug = !global.show_debug }
		},
		{
			text: "Display settings",
			action: function() { debug_show_screen_info() }
		},
		{
			text: "Reset display",
			action: function() 
			{
				with (obj_player)
				{
					set_screen_resolution()
					initialise_display()
				}
			}
		},
		{
			text: "Change name",
			action: function() { 
				with (obj_player)
				{
					instance_create(x, y, obj_get_player_name)
				}
			}
		},
		{
			text: "Change class",
			action: function() {
				//global.class = choose("Hunter", "Fighter", "Spellcaster", "Ninja")
				//room_restart()
				with (obj_player)
				{
					instance_create(x,y,obj_pick_class)
				}
			}
		},
		{
			text: "Random inventory",
			action: function() 
			{ 
				with (obj_player)
				{
					var full_inventory = [[0, 4], [1, 2], [2, 20],  [3, 8],  [4, 1],  [5, 8], [6, 1], [7, 1], [8, 1], [9, 1]]
					
					var full = choose(true, false)
					global.inventory_array = full ? [[5, 4]] : full_inventory
					
					log_player_message(full ? "FULL INVENTORY" : "1 ITEM")
				}
			}
		}
	]
	
	var x_column_1 = WIDTH / 4
	var x_column_2 = WIDTH / 2

	var start_y = 160
	var y_pos = start_y

	var y_gap = 52
	
	var buttons_per_column = 6

	
	// create all debug buttons
	for (var i = 0; i < array_length(debug_controls); i++) 
	{
		if i == buttons_per_column { y_pos = start_y }	
		
		var x_pos = i < 6 ? x_column_1 : x_column_2
		
		var button = instance_create_depth(x_pos, y_pos, 0, obj_button_mobile_debug)
		button.text = debug_controls[i].text
		button.action = debug_controls[i].action
		
		y_pos += y_gap

	}
}