///@description - set all block sprite_index's based on room
function set_room_block_sprite()
{
	var spr = 0

	switch (room) {
	    case room_test:
	        spr = spr_block_grey
	        break;
			
		case room_4:
	        spr = spr_block_metal
	        break;
			
		case room_5:
	        spr = spr_block_ground
	        break;
			
	}
	
	if spr == 0 { exit }
	
	// set every block instance vars
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