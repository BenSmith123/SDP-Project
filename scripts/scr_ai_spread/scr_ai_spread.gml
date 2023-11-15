function scr_ai_spread() {
	// slow down one of the ai when grouped together

	other_ai = position_meeting(x,y,ai_parent)

	if image_xscale = -1 // if moving left
	{
	    if place_meeting(x-10,y,ai_parent) // if ai have met
	    {
	        if x < other_ai.x {other_ai.hspeed = 0}
	    }
	}

	if image_xscale = 1 // if moving right
	{
	    if place_meeting(x+10,y,ai_parent) // if ai have met
	    {
	        if x > other_ai.x {other_ai.hspeed = 0}
	    }
	}



}
