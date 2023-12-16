function mob_chase() 
{

	if distance_to_object(enemy) <= detect_distance
	{

	    //if scr_ai_meet_y() == true
	    {
	        state = "Chase"
	        stay = false 
            
			ai_face_enemy()
	    }
	    //else
	    //{
		//	 TODO - if can jump?
	    //    if not (place_empty(x,y+1, obj_block))
	    //    {
	    //        vspeed = -jump
	    //    }
	    //}
	}

}
