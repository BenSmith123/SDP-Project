function basic_collision_and_gravity()
{
	if (speed == 0) { exit }
	
	x = round(x)
	y = round(y)
	
	apply_gravity()
	
	if !place_empty(x+hspeed,y, obj_block) { hspeed = 0 } // prevent coin sticking to walls 

	if (vspeed != 0 && !place_empty(x,y+vspeed, obj_block))
	{
	    //move_contact_all(270,0)
		vspeed = 0
		hspeed = 0
	}

}