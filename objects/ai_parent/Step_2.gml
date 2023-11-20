/// @description handle sprites

image_speed = 0.25

if attacking == true 
{ 
	sprite_index = sprite_attack 
	exit
}

if place_empty(x, y+1, obj_block)
{
	state = "jumping"
    sprite_index = sprite_jump
	exit
}

sprite_index = stay == true
	? sprite_stand
	: sprite_walk
