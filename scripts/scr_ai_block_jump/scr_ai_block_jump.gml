function scr_ai_block_jump() {

	if is_on_ground == true
	{
		
		var block_dist_x = block_distance * image_xscale
		
	    // if wall or slope to the left or right
	    if position_meeting(x+block_dist_x,y,obj_block)
	    {

	        stay = false
        
	        // if the ai can jump
	        if  jump > 0
	        {
				// if block in front isnt too high
				if !position_meeting(x+block_dist_x ,y+jump_block_height, obj_block)
				{
					state = "Jump block"
					vspeed = -jump
					hspeed =speed_in_direction
				}
	        }
	        else // if cant jump over block, turn around
	        {
	            scr_ai_turn_around()
	        }
	    }
	}




}
