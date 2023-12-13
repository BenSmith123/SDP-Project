
if (!instance_exists(obj_player)) { exit }

var y_position_meeting = obj_player.y > bbox_top && obj_player.y < bbox_bottom
var is_player_close = distance_to_object(obj_player) < chat_distance

can_interact = y_position_meeting && is_player_close

if (can_interact)
{
	if keyboard_check_pressed(ord("E")) || obj_player.attacking { event_user(0) }
	if instance_exists(text_bubble) { exit }
	
	// TODO - fix position depending on text height?
	text_bubble = instance_create(x+60, y-140, obj_npc_speech_bubble)
	text_bubble.text = text
}
else
{
	instance_destroy(text_bubble)
}

