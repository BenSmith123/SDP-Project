function player_set_start_position()
{
	// set where the player first spawns in the room
	global.player_start_x = x
	global.player_start_y = y
	
	// use room position of obj_player if respawning from being killed
	if global.player_is_respawning
	{
		global.player_is_respawning = false
		exit
	}

	// use last known player position if continuing saved game
	if global.session_first_spawn 
	&& global.current_player_x != -1
	&& asset_get_index(global.current_map_name) == room 
	{
		x = global.current_player_x
		y = global.current_player_y
		global.session_first_spawn = false
		exit
	}
	
	// player map spawn position!
	
	// use room position of obj_player if spawn points don't exist
	if !instance_exists(obj_marker_player_spawn_left) { exit }
	if !instance_exists(obj_marker_player_spawn_right) { exit }
	
	var spawn_obj = global.came_from_left_map
		? obj_marker_player_spawn_left
		: obj_marker_player_spawn_right
		
	// face the right direction
	image_xscale = global.came_from_left_map ? 1 : -1
		
	x = spawn_obj.x
	y = spawn_obj.y
	
}