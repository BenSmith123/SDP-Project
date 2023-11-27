
///@description - turn around
function ai_turn_around() 
{	
	//state = "Turn around"

	if can_turn == true
	{
	    can_turn = false
	    alarm[2] = 60

	    image_xscale = -image_xscale
	}
}

///@description - turn to face the enemy
function ai_face_enemy()
{
	if is_left_of_enemy 
	{
		if facing_left { ai_turn_around() }
	}
	else if !facing_left { ai_turn_around() }
}


