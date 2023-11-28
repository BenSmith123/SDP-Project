function scr_ai_confront()
{
	if scr_ai_meet_y() == false { exit } 
	
	// if enemy is on same platform
	state = "attack - y meet"

	if (distance_to_object(enemy) < attack_distance)
	{
	    state = "Attack"
    
	    stay = true
	    if is_left_of_enemy { image_xscale = 1 } else { image_xscale = -1 } // face enemy
			
		if attack_ability { scr_ai_attack() }
	}
	else
	{
		// can't see enemy, keep moving
	    stay = false
	}

}
