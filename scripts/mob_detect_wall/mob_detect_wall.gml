function mob_detect_wall()
{
	if !is_on_ground { exit }

	var block_dist_x = block_distance * image_xscale
		
	// if wall or slope to the left or right
	if place_meeting(x+block_dist_x,y,parent_block_solid)
	{
	    stay = false
		
		state = "wall"
		
		var block_is_too_high = place_meeting(x+block_dist_x ,y+jump_block_height, parent_block_solid)
        
	    // if the ai can jump
	    if jump > 0 && !block_is_too_high
	    {
			state = "Jump block"
			vspeed = -jump
			hspeed = speed_in_direction
	    }
	    else // if cant jump over block, turn around
	    {
			state = "detect wall - turn"
			reached_dead_end = true // override the direction of the player
	        ai_turn_around()
	    }
	}
	
}
