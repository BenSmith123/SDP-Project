function scr_ai_run()
{
	if (scr_ai_meet_y() == true)
	{
	    state = "Run"
	    stay = false
        
		// NOTE - using the turn away scripts here will cause a loop, needs to be instant
	    if x < enemy.x
	    {
	        image_xscale = -1
	    }
	    else
	    {
	        image_xscale = 1
	    }
	}
}
