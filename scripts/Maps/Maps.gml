

///@description - go to the next room depending on what room you're on
function get_playable_maps_order()
{
	return 
	[
		// add maps here to be included in 
		room_test,
		room_village,
		room_cave_small,
		room_cave_large,
		room_metal
	]
}


function move_to_map(previous_map = false) 
{
	var current_map_index = get_current_map_index()
	
	var next_map_index = previous_map 
		? current_map_index-1
		: current_map_index+1
		
	var maps = get_playable_maps_order()
	
	if next_map_index < 0 || next_map_index >= array_length(maps) 
	{ 
		log_player_message("DEBUG: No further maps")
		exit
	}

	room_goto(maps[next_map_index])
}

function get_current_map_index()
{
	var maps = get_playable_maps_order()
	
	for (var i = 0; i < array_length(maps); ++i) {
	    if (maps[i] == room) return i
	}
	
	return -1
}

