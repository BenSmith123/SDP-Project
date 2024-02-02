
/// @description - returns an array of labels/values of player statistics
// not to be confused with stat points like attack/hp etc.
// this way the labels/values can be left/right aligned opposite each other
function get_player_statistics_data()
{
	
	var to_do = "TODO"
	
	return 
	[
		{ label: "Mobs killed", value: global.mob_kills },
		{ label: "Mobs killed (since last death)", value: global.mob_kills_current },
		{ label: "Deaths", value: global.player_deaths },
		{ label: "Total coins collected", value: $"${global.coins_collected}" },
		//{ label: "Coins spent", value: to_do },
		{ label: "Coins lost (from death)", value: $"${global.coins_lost}" },
		{ label: "Total EXP", value: global.total_experience },
		{ label: "EXP lost (from death)", value: global.experience_lost },
		{ label: "Items picked up", value: global.total_items_picked_up },
		{ label: "Legendary items found", value: global.legendary_items_found },
	]
}


function draw_player_statistics_data(x_left, x_right, yy)
{
	var player_statistics_data = get_player_statistics_data()
	
	var row_y = yy
	
	for(i = 0; i < array_length(player_statistics_data); i++)
	{
		var label = player_statistics_data[i].label
		var value = player_statistics_data[i].value
		
		scr_text_6()
		draw_text(x_left, row_y, label)
		
		draw_set_halign(fa_right)
		draw_text(x_right, row_y, string(value))
		
		row_y += 24
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
