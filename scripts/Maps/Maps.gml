

///@description - go to the next room depending on what room you're on
function get_playable_maps_order()
{
	return 
	[
		// add maps here to be included in 
		room_test_mobs,
		room_test,
		room_village,
		room_cave_small,
		room_plains,
		room_cave_large,
		room_dark_forest,
		room_metal
	]
}


///@description - move to previous or next map
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


///@description - returns the current map index
function get_current_map_index()
{
	var maps = get_playable_maps_order()
	
	for (var i = 0; i < array_length(maps); ++i) {
	    if (maps[i] == room) return i
	}
	
	return -1
}


///@description - set all block sprite_index's based on room
function set_room_block_sprite()
{
	
	var spr = 0

	switch (room) {
	    case room_test:
	        spr = spr_block_grey
	        break
			
		case room_metal:
	        spr = spr_block_metal
	        break
			
		case room_cave_small:
		case room_snow:
		case room_cave_large:
		case room_plains:
		case room_dark_forest:
	        spr = spr_block_ground
	        break
			
		// dont use default - some blocks aren't 24x24
	}
	
	if spr == 0 { exit }
	
	set_block_defaults(spr)
}


///@description - set block image index and mask
function set_block_defaults(spr)
{
	with (obj_block) 
	{ 
		sprite_index = spr 
		depth = ObjectDepth.Tiles
		image_speed = 0
	}
	
	with (obj_block_solid) // wall block
	{ 
		image_index = 1
	}
	
	// preserve the mask_index (for collisions)
	with (obj_block_slope_left) 
	{ 
		image_index = 3
		mask_index = spr_block_bl
	}
	with (obj_block_slope_right)
	{ 
		image_index = 4
		mask_index = spr_block_br
	}
}