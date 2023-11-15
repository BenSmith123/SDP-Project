function scr_move_right() {



	if place_meeting(x+10,y,obj_block) 
	{
	     // loop to push the player up depending on the slope
	     for(new_y = 0; new_y < 10; new_y++)
	     {
	         // checks for place free above the slope
	         if(place_free(x+walk_speed,y-new_y))
	         {
	             image_xscale = 1
	             hspeed = walk_speed
	             y -= new_y // move player up
	             break
	         }
	     }       
	}
	else
	{
	    if attacking = false
	    {
	        state = "walkingR" // debug
	        image_xscale = 1
	        if (hspeed <= walk_speed)
	        {hspeed += 1}
	    }
	}



}
