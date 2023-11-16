function scr_ai_chase() {


	if distance_to_object(enemy) <= detect_distance
	{

	    if (scr_ai_meet_horizontal_y() = true)
	    {
	        {
	            state = "Chase enemy"
	            stay = false 
            
	            if x < enemy.x
	            {
	                image_xscale = 1
	            }
	            else
	            {
	                image_xscale = -1
	            }
	        }
	    }
	    else
	    {
	        if not (place_empty(x,y+1, obj_block))
	        {
	            vspeed = -jump
	        }
	    }
	}



}
