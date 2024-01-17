function mob_attack()
{
	// if can't shoot attack and isn't on platform
	if !has_attack_ability { exit }
	
	// TODO - line of sight attacks
	// this temp fix to allow drone operator to fire rockets at player if they're above
	if projectile_obj != obj_projectile_mob_tracking && scr_ai_meet_y() == false { exit }
	
	// if enemy is on same platform
	state = "attack - y meet"

	if (distance_to_object(enemy) < attack_distance)
	{
	    state = "Attack"
    
	    stay = true
	    if is_left_of_enemy { image_xscale = 1 } else { image_xscale = -1 } // face enemy
		
		if !can_shoot { exit }
			
		if has_attack_ability 
		{
			can_shoot = false
			attacking = true
			image_index = 0
			sprite_index = sprite_attack
			
			attack_ability()
		}
	}
	else
	{
		// not close enough to attack but can still see enemy
		// state = "player out of attack range"
	    stay = false
	}

}
