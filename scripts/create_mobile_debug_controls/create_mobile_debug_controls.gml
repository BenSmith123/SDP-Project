function create_mobile_debug_controls()
{

	// NOTE - anonymous functions declared as values of a struct act from the scope of that struct, not the current instance
	// this will cause crashes when creating instances because the struct has no depth, use with keyword when creating instances

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
			action: function() { with (obj_player) { level_up() } }
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
		},
		{
			text: "Test haptics",
			action: function() {
				var duration = choose(5, 300)
				var strength = choose(10, 255)
				Vibrate(duration, strength) // TODO - replace with script
				global.name = ($"{duration} | {strength}")
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
		var button = instance_create_depth(start_x,start_y + yy, 0, obj_button_mobile_debug)
		button.text = debug_controls[i].text
		button.action = debug_controls[i].action
	}
}