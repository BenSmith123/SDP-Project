function player_jump()
{

	var ladder = instance_nearest(x, bbox_top, parent_climbable)

	if place_meeting(x, y, ladder)
	{
		if bbox_bottom > ladder.bbox_top
		{
			is_on_ladder = true
			vel_x = 0
			x = ladder.x
			y -= 3
			exit
		}
	}

	
	if (grounded)
	{
		instance_create(x, bbox_bottom, obj_fx_player_jump)
		
		vel_y = -jump
		grounded = false
	
		// reset second jump for ninja class
		second_jump = false
		exit
	}
	else if keyboard_check_pressed(ord("W")) 
	{
		// spellcaster teleport
		if has_teleport_skill { teleport(); exit }
		
		if second_jump == false // if hasnt already second jumped
		{
		    instance_create(x,y,obj_fx_double_jump)
		    vel_y = -jump;
		    second_jump = true
		}
	}
}
