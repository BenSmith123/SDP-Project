/// @description handle sprites

if attacking == true 
{ 
	sprite_index = sprite_attack 
	exit
}

if place_empty(x, y+1, obj_block)
{
	state = "jumping"
    sprite_index = sprite_jump
    leftx = 0
    rightx = 0
    platform_width = 24
	exit
}

sprite_index = stay == true
	? sprite_stand
	: sprite_walk
