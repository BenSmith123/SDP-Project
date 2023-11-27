
///@description - turn around
function ai_turn_around() 
{	
	if can_turn == true
	{
		state = "Turn around"

	    can_turn = false
	    alarm[2] = 60

	    image_xscale = -image_xscale
		state = string(image_xscale)
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


