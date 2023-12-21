// check if there is a collision 1 pixel below the character
grounded = check_collision(0, 1) || place_meeting(x+vel_x, y+vel_y, obj_block_slope_parent)

// DEBUG
//if vel_x < 0.5 && vel_x > -0.5 && vel_x != 0 show_debug_message(vel_x)

// In this part we are applying friction to the player's velocity, so it eventually comes to a stop when there is no input.
// The 'round' function rounds the X velocity to the nearest integer. Then it checks if that integer is NOT 0. This means there is an
// active velocity of (or more than) 0.5 pixels in either direction.
if (round(vel_x) != 0)
{
	// calculate the friction that should be applied this frame
	var _friction_applied = sign(vel_x) * friction_power

	if (!grounded)
	{
		// slow friction in air
		_friction_applied = _friction_applied / 4
	}

	vel_x -= _friction_applied
}
// This 'else' block runs when there is no X velocity, or it's less than 0.5 pixels in either direction.
else
{
	// In that case we reset the X velocity to 0 so the character comes to a complete stop.
	vel_x = 0
}

// apply gravity each frame
vel_y += grav_speed
