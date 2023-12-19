function player_move_horizontally()
{

	// disable movement if in knockback
	// if (in_knockback) { exit }

	// set the X velocity to walk_speed
	// this makes the character move left/right
	var reached_terminal_velocity = vel_x > -walk_speed && vel_x < walk_speed
	if reached_terminal_velocity
	{
		vel_x += move_left ? -1 : 1
	}

	image_xscale = move_left ? -1 : 1

	// This checks if the current sprite is the fall sprite, meaning the player hasn't landed yet.
	if (sprite_index == spr_player_jump)
	{
		// In that case we exit/stop the event here, so the sprite doesn't change.
		exit;
	}

	// This checks if the player is on the ground, before changing the sprite to the walking sprite. This is
	// done to ensure that the walking sprite does not active while the player is in mid-air.
	if (grounded)
	{
		// Change the instance's sprite to the walking player sprite.
		sprite_index = spr_player_walking;
	}

}