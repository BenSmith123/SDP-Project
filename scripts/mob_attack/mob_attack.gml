function mob_attack()
{
	// if can't shoot attack and isn't on platform
	if !has_attack_ability && scr_ai_meet_y() == false { exit } 
	
	// if enemy is on same platform
	state = "attack - y meet"

	if (distance_to_object(enemy) < attack_distance)
	{
	    state = "Attack"
    
	    stay = true
	    if is_left_of_enemy { image_xscale = 1 } else { image_xscale = -1 } // face enemy
			
		if has_attack_ability { attack_ability() }
	}
	else
	{
		// can't see enemy, keep moving
	    stay = false
	}

}
