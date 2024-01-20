
// player fell off map
if y > room_height 
{ 
	var block = instance_nearest(x,y,obj_block)
	y = block.bbox_top - 60
	exit 
}

if !instance_exists(obj_map_transition)
{
	var going_to_left_map = x < 0
	global.came_from_left_map = !going_to_left_map
	
	var transition = instance_create(x, y, obj_map_transition)
	transition.image_alpha = 0
	transition.go_to_previous_map = going_to_left_map
	transition.fade_out = true
}

