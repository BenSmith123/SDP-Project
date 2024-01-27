
var is_floor_block = false

with(other)
{
	is_floor_block = collision_line(x,y,x,room_height, obj_block,false,true) == noone
}
	
if is_floor_block { instance_destroy() }
