

apply_gravity()

scr_ai_movement()




// TODO - could this be moved to when hit and moving instead of here to optimise performance

// the left/right movement checks have to be done seperately to prevent disabling
// both L/R movement when the mob is stuck against a wall
if hspeed < 0 
{
	// and meets a solid wall to the left
	if !place_empty(x+hspeed, y-1, parent_block_solid)
	{
		// disable movement or hitback
		hspeed = 0
	}
}
else  if hspeed > 0
{
	if !place_empty(x+hspeed, y-1, parent_block_solid)
	{
		hspeed = 0
	}
}
