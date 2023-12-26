

apply_gravity()

scr_ai_movement()


// the left/right movement checks have to be done seperately to prevent disabling
// both left/right movement when the mob is stuck against a wall
// if moving left
if hspeed < 0 
{
	// and meets a solid wall to the left
	if !place_empty(x+hspeed, y-1, obj_block_solid)
	{
		// disable movement or hitback
		hspeed = 0
	}
}
else  if hspeed > 0
{
	if !place_empty(x+hspeed, y-1, obj_block_solid)
	{
		hspeed = 0
	}
}
