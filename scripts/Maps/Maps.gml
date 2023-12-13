

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


function move_to_map(previousMap = false) 
{
	var currentMapIndex = get_current_map_index()
	if (currentMapIndex == -1) { exit } // TODO - what if map doesn't exist?
	
	var nextMapIndex = previousMap 
		? currentMapIndex-1
		: currentMapIndex+1
		
	var maps = get_playable_maps_order()

	room_goto(maps[nextMapIndex])
}

function get_current_map_index()
{
	var maps = get_playable_maps_order()
	
	for (var i = 0; i < array_length(maps); ++i) {
	    if (maps[i] == room) return i
	}
	
	return -1
}

