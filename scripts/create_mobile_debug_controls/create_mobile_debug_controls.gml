function create_mobile_debug_controls()
{
	
	// create close button
	var three_quarter_screen_x = global.screen_w/2+global.screen_w/4
	var three_quarter_screen_y = global.screen_h/2+global.screen_h/4

	var close_button = instance_create(three_quarter_screen_x, three_quarter_screen_y, obj_dialog_close_button)
	close_button.obj_to_destroy_on_close = obj_button_mobile_debug
	close_button.persistent = true
	
	// if debug menu already open, close it
	if instance_exists(obj_button_mobile_debug) 
	{ 
		instance_destroy(obj_button_mobile_debug)
		instance_destroy(obj_dialog_close_button)
		exit
	}

	// NOTE - anonymous functions declared as values of a struct act from the scope of that struct, not the current instance
	// this will cause crashes when creating instances because the struct has no depth, use 'with' keyword when creating instances

	function debug_log_player_message(str)
	{
		with (obj_player) { log_player_message(str) }
	}
	
	function debug_random_inventory()
	{
		if global.name != "BEN705" { debug_show_no_access(); exit }
		with (obj_player)
		{
			global.coins += 1_000_000
			var full_inventory = [[ItemId.BasicSword, 1], [ItemId.BasicBow, 1],[ItemId.BasicShuriken, 1], [0, 4], [1, 2], [2, 20],  [3, 8],  [4, 1],  [5, 8], [6, 1], [7, 1], [8, 1], [9, 1]]
			var full = choose(true, false)
			global.inventory_array = full ? full_inventory :  [[5, 4]]
			log_player_message(full ? "FULL INVENTORY" : "1 ITEM")
		}
	}
	
	function debug_change_class() 
	{
		global.class = choose("Hunter", "Fighter", "Spellcaster", "Ninja")
		with (obj_player)
		{
			log_player_message($"Set class: {global.class}")
			player_set_class_attributes(true)
			player_set_skin_sprites()
			player_set_class_attributes()
			// instance_create(x,y,obj_pick_class)
		}
	}


	var debug_controls = 
	[
		{
			text: "Reboot game#(keep progress)",
			action: function() { game_restart() }
		},
		{
			text: "Reset game#(lose progress)",
			action: function() { reset_game() }
		},
		{
			text: "Display info",
			action: function() { debug_show_screen_info() }
		},
		{
			text: "Reset display",
			action: function() 
			{
				with (obj_player)
				{
					initialise_game_display()
					initialise_views()
				}
			}
		},
		{
			text: "Performance test UI",
			action: function() { show_debug_overlay(!is_debug_overlay_open()); debug_close_menu() }
		},
		{
			text: "Debugging mode",
			action: function() { global.show_debug = !global.show_debug }
		},
		//// SECOND ROW
		{
			text: "< Previous Map",
			action: function() { move_to_map(true) }
		},
		{
			text: "CRASH GAME",
			action: function() { crash_game_for_testing() },
			disabled: global.name != "BEN705"
		},
		//{
		//	text: "Test haptics",
		//	action: function() 
		//	{
		//		var duration = choose(5, 300)
		//		var strength = choose(10, 255)
		//		Vibrate(duration, strength) // TODO - replace with script
		//		global.name = ($"{duration} | {strength}")
		//	}
		//},
		{
			text: "Spawn mob",
			action: function() 
			{
				var mob = choose(obj_mob_training_bot_fly, obj_mob_drone)
				instance_create_depth(obj_player.x+200, obj_player.y-60, ObjectDepth.Mob, mob)
			}
		},
		{
			text: "Spawn boss",
			action: function() 
			{
				var mob = choose(obj_mob_dragon, obj_ai_2, obj_mob_unknown)
				instance_create_depth(obj_player.x+200, obj_player.y-60, ObjectDepth.Mob, mob)
				debug_close_menu()
			}
		},
		{
			text: "Toggle view zoom",
			action: function() 
			{
				global.zoom_view = !global.zoom_view
				initialise_views()
			}
		},
		{
			text: "Change class",
			action: debug_change_class
		},
		// THIRD ROW
		{
			text: "Next Map >",
			action: function() { move_to_map() }
		},
		{
			text: "Random inventory",
			action: debug_random_inventory,
			disabled: global.name != "BEN705"
		},
		{
			text: "Level up",
			action: function() { with (obj_player) { level_up() } },
			disabled: global.name != "BEN705"
		},
	]
	
	var start_column = WIDTH / 5

	var start_y = 150
	var y_gap = 64
	var x_pos = start_column
	var y_pos = start_y
	
	var buttons_per_column = 6
	
	// create all debug buttons
	for (var i = 0; i < array_length(debug_controls); i++) 
	{
		var new_column = i % buttons_per_column == 0 && i != 0
		if new_column 
		{
			y_pos = start_y
			x_pos += start_column 
		}
		
		var debug_details = debug_controls[i]
		
		var button = instance_create_depth(x_pos, y_pos, 0, obj_button_mobile_debug)
		button.text = debug_details.text
		button.action = debug_details.action
		
		if struct_exists(debug_details, "disabled") { button.disabled = debug_details.disabled }
		
		y_pos += y_gap
	}
}


function debug_close_menu() { instance_destroy(obj_button_mobile_debug) }
