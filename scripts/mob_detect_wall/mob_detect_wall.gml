function mob_detect_wall()
{

	if !is_on_ground { exit }

	var block_dist_x = block_distance * image_xscale
	state = string(block_dist_x)
		
		
	// if wall or slope to the left or right
	if place_meeting(x+block_dist_x,y,obj_block_solid)
	{
	    stay = false
        
	    // if the ai can jump
	    if  jump > 0
	    {
			// if block in front isnt too high
			if !place_meeting(x+block_dist_x ,y+jump_block_height, obj_block_solid)
			{
				state = "Jump block"
				vspeed = -jump
				hspeed = speed_in_direction
			}
	    }
	    else // if cant jump over block, turn around
	    {
			reached_dead_end = true // override the direction of the player
	        ai_turn_around()
	    }
	}
	
}
