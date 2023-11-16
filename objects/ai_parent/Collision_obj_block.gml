
if (vspeed > 0 && !place_empty(x,y+vspeed, obj_block))
{ 
	move_contact_all(270, 1)
	vspeed = 0
} 
