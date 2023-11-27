function player_set_start_position()
{
	// set where the player first spawns in the room
	global.player_start_x = x
	global.player_start_y = y

	// use last known player position if continuing saved game
	if global.session_first_spawn 
	&& global.current_player_x != -1
	&& asset_get_index(global.current_map_name) == room 
	{
		x = global.current_player_x
		y = global.current_player_y
		global.session_first_spawn = false
	}
	
	// TODO - spawn left or right
}