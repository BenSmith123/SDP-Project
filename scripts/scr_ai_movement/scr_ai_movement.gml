function scr_ai_movement() {

	speed_in_direction = image_xscale * walkspeed
	is_on_ground = place_meeting(x,y+1, obj_block)
	
	if is_on_ground == true
	{
		
	    // MOVING LEFT AND RIGHT
	    if stay == false
	    {
			// state = "Walking"
			if !stunned
			{
				// move!
				hspeed = speed_in_direction
			}

			if place_meeting(x+hspeed, y-1, obj_block)
			{
				state = "Slope"
				
				// loop to push the mob up depending on the slope
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
			// debug
	        state = "Stay"
	        //hspeed = 0
	    }

	}

	//scr_ai_spread() // stop ai bunching together
	
	// jump or turn around
	mob_detect_wall()
	
	mob_detect_end_of_platform()

	
	// stop all scripts below if player doesn't exist - prevent crashes & avoid additional checks
	if !instance_exists(enemy) { exit }
	
	is_left_of_enemy = x < enemy.x
	facing_left = image_xscale == -1
	
	if (hp < maxhp/100*health_run_percent) { scr_ai_run(); exit }

	if aggressive || has_been_attacked
	{
	    scr_ai_chase()
		scr_ai_confront()
	}

}
