function scr_ai_movement() {

	if image_xscale = -1 // moving left
	{
	    block_distance = -block_distance // how far away a block can be before walking into it or changing dir
	    speeed = -walkspeed
	}

	if image_xscale = 1 // moving right
	{
	    block_distance = block_distance
	    speeed = walkspeed
	}


	//if (place_empty(x-8,y, obj_block)) or (place_empty(x+8,y, obj_block))
	{
	    // MOVING LEFT AND RIGHT
	    if stay = false
       
	      {
	       //state = "Walking"    
    
	        if image_xscale = -1
	        {
	            hspeed = -walkspeed
	        }
	        if image_xscale = 1
	        {
	            hspeed = walkspeed
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
