/// @description handle sprites

if attacking == true 
{ 
	sprite_index = sprite_attack
	if stay_while_attacking { stay = true }
	
	if animated_attack
	{
		mob_attack_perform_animated()
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
