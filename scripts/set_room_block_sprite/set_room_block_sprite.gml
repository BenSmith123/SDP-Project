///@description - set all block sprite_index's based on room
function set_room_block_sprite()
{
	var spr = spr_block_test

	switch (room) {
	    case room1:
	        spr = sprite84
	        break;
			
		case room11:
	        spr = spr_block
	        break;
			
		case room11:
	        spr = sprite80
	        break;
	}
	
	// set every block instance vars
	with (obj_block) 
	{ 
		sprite_index = spr 
		depth = ObjectDepth.Tiles
		image_speed = 0
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