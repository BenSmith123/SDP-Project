function player_jump()
{
	if (grounded)
	{
		// This sets the Y velocity to negative jump_speed, making the player immediately jump upwards. It
		// will automatically be brought down by the gravity code in the parent's Begin Step event.
		vel_y = -jump_speed;

		// This changes the player's sprite to the jump sprite, and resets the frame to 0.
		sprite_index = spr_player_jump;
		image_index = 0;

		// This sets 'grounded' to false, so that any events after this know that the player is not supposed
		// to be on the ground anymore.
		grounded = false;
	
		// reset second jump for ninja class
		second_jump = false

		// This creates an instance of obj_effect_jump at the bottom of the player's mask. This is the
		// jump VFX animation.
		// instance_create_layer(x, bbox_bottom, "Instances", obj_effect_jump);
	}
	else if has_second_jump_skill // double jump for ninja
	{
		if second_jump = false // if hasnt already second jumped
		{
		    instance_create(x,y,obj_fx_double_jump)
		    vel_y = -jump_speed;
		    second_jump = true
		}
	}
	
}
