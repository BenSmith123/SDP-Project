function player_jump()
{
	// global.name = is_on_ladder == true ? "yes" : "no"

	if place_meeting(x, y, obj_ladder)
	{
		if bbox_bottom > obj_ladder.bbox_top
		{
			is_on_ladder = true
			vel_x = 0
			x = obj_ladder.x
			y -= 3
			exit
		}
	}

	
	if (grounded)
	{
		instance_create(x, bbox_bottom, obj_fx_player_jump)
		
		vel_y = -jump;

		sprite_index = spr_player_jump;
		image_index = 0;

		grounded = false;
	
		// reset second jump for ninja class
		second_jump = false
		exit
	}
	else if has_second_jump_skill // double jump for ninja
	{
		
		if !keyboard_check_pressed(ord("W")) { exit }

		if second_jump = false // if hasnt already second jumped
		{
		    instance_create(x,y,obj_fx_double_jump)
		    vel_y = -jump;
		    second_jump = true
		}
	}
	
}
