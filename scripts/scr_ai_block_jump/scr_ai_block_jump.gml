function scr_ai_block_jump() {

	if (place_meeting(x,y+1, obj_block)) // if on ground 
	{
	    //if not (position_empty(x+block_distance,y)) // block to the left or right
	    if position_meeting(x+block_distance,y,obj_block)
	    {
    
	        stay = false
        
	        //if // if the ai can jump
        
	        if  jump > 0 and position_meeting(x+block_distance,y+jump_block_height, obj_block) // if block to the left isnt too high
	        {
	            state = "Jump block"
	            vspeed = -jump
	            hspeed = speeed
	        }
        
	        else // if cant jump over block, turn around
	        {
	            state = "Turn around"
	            scr_ai_turn_around()
	        }
	    }
	}




}
