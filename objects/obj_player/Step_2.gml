

if is_on_ladder
{
	sprite_index = sprite_climb_rope
	if y == yprevious { image_speed = 0 } // stop animation if not moving
	exit
}

if attacking
{
    sprite_index = sprite_attack
    if image_index = 1
	{ 
		var damage = calculate_damage(attack, accuracy, enemy.defence)
		deal_damage_to_mob(enemy, damage) 
	}
}

if (!grounded && !attacking) 
{
	sprite_index = sprite_jump
}


// set sprite index based on current sprite
switch (sprite_index)
{
	case sprite_walk:
		// set animation speed as it may have been set to 0 (jumping/attacking)
		image_speed = _image_speed;
	
		// if player isn't moving
		if (vel_x == 0)
		{
			sprite_index = sprite_stand; // idle
		}
	
		break

	case sprite_jump:
	case sprite_jump_in_direction:

		// stand once back on ground
		if (grounded)
		{
			sprite_index = sprite_stand
			image_speed = _image_speed
		}
		else if (vel_x != 0) 
		{
			sprite_index = sprite_jump_in_direction	
		}
		
		break
}