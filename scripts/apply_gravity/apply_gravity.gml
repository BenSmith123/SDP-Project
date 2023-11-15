function apply_gravity() {

	if (place_empty(x, y+3, obj_block))
	{
		gravity = 0.5
	}
	else
	{
		gravity = 0
	}
	
	vspeed = min(TERMINAL_VELOCITY, vspeed)
}
