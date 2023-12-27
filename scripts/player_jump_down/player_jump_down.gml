function player_jump_down()
{
	
	if is_on_ladder
	{
		y += 3
		image_speed = 1
		exit
	}
	
	// check solid block seperately first as its a child of block
	if instance_place(x, y + 1, obj_block_solid)  { exit }

	var block = instance_place(x, y + 1, obj_block)
	if block == noone { exit }
	
	var is_block_below = false
	
	with (block)
	{
		is_block_below = collision_line(x,y,x,room_height, obj_block,false,true) != noone
	}
	
	if !is_block_below { exit }
	
	// jump down!
	y += 1 // move player 1px down - this will void the boundrybox collision check
	disable_block_collision = true
}