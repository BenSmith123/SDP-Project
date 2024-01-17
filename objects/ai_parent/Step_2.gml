/// @description handle sprites

if attacking == true 
{ 
	sprite_index = sprite_attack
	if stay_while_attacking { stay = true }
	
	if animated_attack
	{
		if round(image_index) == do_damage_frame
		{
			//if distance_to_object(enemy) < 100
			if instance_exists(obj_player)
			{
				if obj_player.grounded { deal_damage_to_player(obj_player) }
			}
		}
	}
	
	if image_number > 1 // ignore this if is an attack that isn't animated
	{
		var animation_end = image_index > image_number-1
		if animation_end
		{
			attacking = false
			stay = false
			sprite_index = sprite_walk
			alarm[0] = 120 // cooldown until attack again
			stunned = false // disable stunned to allow knockback since animation is over
		}
	}
	exit
}


if stunned 
{
	sprite_index = sprite_hit
	image_index = 0
	exit
}


if place_empty(x, y+1, obj_block)
{
	// state = "jumping"
    sprite_index = sprite_jump
	exit
}


sprite_index = stay
	? sprite_stand
	: sprite_walk
