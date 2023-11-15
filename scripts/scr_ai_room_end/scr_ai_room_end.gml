function scr_ai_room_end() {

	turn_distance = 40

	// left
	if (x < 0+turn_distance or x > room_width-turn_distance)
	{

	    if can_turn = true
	    {
        
	        can_turn = false
	        alarm[2] = 15
    
	        if image_xscale = -1
	        {image_xscale = 1 exit}
	        else
	        {image_xscale = -1}
    
    
        
	    }
    
	}



}
