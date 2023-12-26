

if is_on_ladder
{
	sprite_index = spr_player_defend
	exit
}

if attacking = true 
{
    sprite_index = attack_sprite
    if image_index = 1 
	{ 
		var damage = calculate_damage(attack, accuracy, enemy.defence)
		deal_damage_to_mob(enemy, damage) 
	}
}

if (!grounded && !attacking) 
{
	sprite_index = spr_player_jump
}



// This allows us to transition to some other sprite, depending on the currently assigned sprite, and some additional conditions.
switch (sprite_index)
{
	case spr_player_walking:
		// Set the animation speed to 1, as it may have been set to 0 during the jump animation.
		image_speed = _image_speed;
	
		// This checks if the X velocity is 0, meaning the player is not moving horizontally.
		if (vel_x == 0)
		{
			// In that case we change its sprite to the idle one.
			sprite_index = spr_player_stand;
		}
	
		break;

/*
	// Code under this case runs if the assigned sprite is 'spr_player_jump', meaning the player was in the middle of a jump.
	case spr_player_jump:
		// This checks if the Y velocity is equal to, or greater than 0, meaning the player has now started falling downward.
		if (vel_y >= 0)
		{
			// In that case we change its sprite to the fall sprite, and reset the frame to 0.
			sprite_index = spr_player_jump;
			image_index = 0;
		
			// We also reset the animation speed to 1, as it was set to 0 at the end of the jump animation.
			image_speed = 1;
		}
		break;
*/

	// Code under this case runs if the assigned sprite is 'spr_player_fall', meaning the player was falling downward.
	case spr_player_jump:
	case spr_player_jump_in_direction:
		// This checks if the player is now on the ground
		if (grounded)
		{
			// In that case we change its sprite to the idle sprite.
			sprite_index = spr_player_stand;
			image_speed = _image_speed;
		}
		else if (vel_x != 0) sprite_index = spr_player_jump_in_direction
		
		break;

	// 'default' code runs when none of the other cases are valid, meaning the currently assigned sprite is not covered by any
	// of the cases above.
	default:
		// image_speed = _image_speed;
		break;
}