function scr_ai_movement() {

	if image_xscale = -1 // moving left
	{
	    speeed = -walkspeed
	}

	if image_xscale = 1 // moving right
	{
	    speeed = walkspeed
	}


	if (place_meeting(x,y+1, obj_block)) // if on ground 
	{
		
	    // MOVING LEFT AND RIGHT
	    if stay == false
	    {
			state = "Walking"   
		    // positive or negative walk speed depending on direction
		    hspeed = walkspeed * image_xscale

			if place_meeting(x+hspeed, y-1, obj_block)
			{
				state = "Slope"
				
				// loop to push the player up depending on the slope
				for(var new_y = 0; new_y < 10; new_y++)
				{
					// checks for place free above the slope (prevent walking up/through a wall)
					if (place_empty(x+hspeed, y-new_y, obj_block))
					{
						y -= new_y;
					    break
					}
				}   
			}
	    }
	    else
	    {
	        state = "Stay"
	        //hspeed = 0
	    }

	}

	//scr_ai_spread() // stop ai bunching together

	if aggressive = true
	{
	    scr_ai_chase()
	}


	scr_ai_block_jump()

	scr_ai_room_end()

	if (hp < maxhp/100*health_run_percent)
	{scr_ai_run() exit}


	// scr_ai_jump_down() // teleport skill 

	scr_ai_confront()




}
