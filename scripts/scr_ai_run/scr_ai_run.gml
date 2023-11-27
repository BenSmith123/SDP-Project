function scr_ai_run()
{
	if (scr_ai_meet_y() == true)
	{
	    state = "Run"
	    stay = false
		
		if (reached_dead_end) { exit }
        
		// NOTE - using the turn away scripts here will cause a loop, needs to be instant
	    if is_left_of_enemy
	    {
	        image_xscale = -1
	    }
	    else
	    {
	        image_xscale = 1
	    }
	}
}
