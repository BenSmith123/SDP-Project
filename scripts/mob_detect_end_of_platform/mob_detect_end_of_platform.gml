function mob_detect_end_of_platform()
{
	if !is_on_ground { exit }
	
	var end_gap = image_xscale * 20 // 20 or -20px earlier to turn
		
	// if end of platform detected
	if place_empty(x+(speed_in_direction + end_gap),bbox_bottom+16,obj_block)
	{
		state = "end of platform"
		
		// TODO - only jump off if mob can see a platform below?
		
		// if can jump, jump off edge
		if jump > 0
		{
			// drop off platform if chasing
			if aggressive || has_been_attacked { exit }
			
			var should_jump = random_chance(3)
			if (should_jump)
			{
				vspeed = -jump
				exit
			}
		}
		
		// turn around immediately otherwise mob could go to 
		// the other side of a small platform before can_turn is reset
		image_xscale = -image_xscale
	    //ai_turn_around()
		
	    //stay = false
	}
}