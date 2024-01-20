///description - handle sprites!

if is_on_ladder
{
	sprite_index = sprite_climb_rope
	
	// stop animation if not moving
	image_speed = y == yprevious ? 0 : 0.2
	exit
}

if attacking
{
    sprite_index = sprite_attack
	image_speed = melee_attack ? 0.25 : 0.2 

	// create projectile or do damage on last frame
	var animation_end = image_index == image_number-1
	if animation_end
	{
		player_attack_execute()
		alarm[1] = 10 // stop attack sprite
	}
	exit
}

if (!grounded && !attacking) 
{
	sprite_index = sprite_jump
}


// set sprite index based on current sprite
switch (sprite_index)
{
	
	case sprite_stand:
	{
		image_speed = 0.1
		break
	}
	case sprite_walk:
	{
		image_speed = 0.2
	
		// if player isn't moving
		if (vel_x == 0)
		{
			sprite_index = sprite_stand; // idle
		}
		break
	}
	case sprite_jump:
	case sprite_jump_in_direction:
	{
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
}