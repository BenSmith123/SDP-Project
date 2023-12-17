function create_mobile_debug_controls()
{

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
			text: "Level up",
			action: function() { level_up() }
		},
		{
			text: "Change name",
			action: function() { get_string_async("Change name", "") }
		},
		{
			text: "Change class",
			action: function() {
				global.class = choose("Hunter", "Fighter", "Spellcaster", "Ninja")
			}
		}
	]
	
	var start_x = 200
	var start_y = 160
	var y_gap = 40
	
	// create all debug buttons
	for (var i = 0; i < array_length(debug_controls); i++) 
	{
		var yy = y_gap * i + 1
		var button = instance_create(start_x,start_y + yy, obj_button_mobile_debug)
		button.text = debug_controls[i].text
		button.action = debug_controls[i].action
	}
}