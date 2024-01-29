
if !stay 
{ 
	y += dir
	if y == y_top || y == y_bottom { change_direction() }
}


if place_meeting(x,y, obj_player)
{
	var player_is_on_platform = obj_player.y == bbox_top
	
	if player_is_on_platform
	{
		obj_player.y = y-12-(obj_player.bbox_bottom-obj_player.y)
	}
}