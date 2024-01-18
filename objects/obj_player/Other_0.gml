
// player fell off map
if y > room_height 
{ 
	var block = instance_nearest(x,y,obj_block)
	y = block.bbox_top - 60
	exit 
}

if (x < 0)
{
	global.came_from_left_map = false
	move_to_map(true)
	exit
}

if x > room_width
{
	global.came_from_left_map = true
    move_to_map()
}

