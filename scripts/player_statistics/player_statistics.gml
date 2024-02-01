
/// @description - returns an array of labels/values of player statistics
// not to be confused with stat points like attack/hp etc.
// this way the labels/values can be left/right aligned opposite each other
function get_player_statistics_data()
{
	return 
	[
		{ label: "Mobs killed", value: global.mob_kills },
		{ label: "Mobs killed (since last death)", value: global.mob_kills_current },
		{ label: "Deaths", value: global.mob_kills_current }
	]
}


function draw_player_statistics_data(x_left, x_right, yy)
{
	var player_statistics_data = get_player_statistics_data()
	
	for(i = 0; i < array_length(player_statistics_data); i++)
	{
		var label = player_statistics_data[i].label
		var value = player_statistics_data[i].value
		
		scr_text_6()
		draw_text(x_left, yy, label)
		
		draw_set_halign(fa_right)
		draw_text(x_right, yy, string(value))
	}
}


// example of how to do large text/value fields:
function get_player_statistics_string()
{
	var player_statistics_string = string_join("#", 
	$"Mob kills: {global.mob_kills}", 
	$"Times died: {global.mob_kills_current}")
	
	return player_statistics_string
}
