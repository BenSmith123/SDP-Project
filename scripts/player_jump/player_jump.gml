function player_jump()
{
	// global.name = is_on_ladder == true ? "yes" : "no"

	var ladder = instance_nearest(x, y, parent_climbable)

	if place_meeting(x, y, ladder)
	{
		if bbox_bottom > ladder.bbox_top
		{
			is_on_ladder = true
			vel_x = 0
			x = ladder.x
			y -= 3
			image_speed = 1
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
	else if has_teleport_skill
	{
		if !keyboard_check_pressed(ord("W")) { exit }
		
		scr_teleport()
	}
	else if has_second_jump_skill // double jump for ninja
	{
		
		

		if second_jump = false // if hasnt already second jumped
		{
		    instance_create(x,y,obj_fx_double_jump)
		    vel_y = -jump;
		    second_jump = true
		}
	}
	
}
