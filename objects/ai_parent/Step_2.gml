/// @description handle sprites

if attacking == true 
{ 
	sprite_index = sprite_attack
	
	if animated_attack
	{
		if round(image_index) == do_damage_frame
		{
			//if distance_to_object(enemy) < 100
			//{
				deal_damage_to_player(obj_player)
			//}
		}
	}
	
	if stay_while_attacking { stay = true }
	
	// ignore this if is an attack that isn't animated
	if image_number > 1
	{
		var animation_end = image_index > image_number-1
		if animation_end
		{
			attacking = false
			sprite_index = sprite_walk
			alarm[0] = 120 // cooldown until attack again
		}
	}
	exit
}

if place_empty(x, y+1, obj_block)
{
	// state = "jumping"
    sprite_index = sprite_jump
	exit
}

sprite_index = stay == true
	? sprite_stand
	: sprite_walk
