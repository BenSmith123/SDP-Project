
if (!instance_exists(obj_player)) { exit }

var mobile_key_exists = instance_exists(obj_arrow_key_attack)

var y_position_meeting = obj_player.y > bbox_top && obj_player.y < bbox_bottom
var is_player_close = distance_to_object(obj_player) < chat_distance
var dialog_already_open = instance_exists(parent_dialog) // inventory etc.

can_interact = y_position_meeting && is_player_close && !dialog_already_open

if (can_interact && !has_interacted)
{
	if mobile_key_exists { obj_arrow_key_attack.sprite_index = spr_mobile_key_chat }
	if keyboard_check_pressed(ord("E")) || global.is_mobile && keyboard_check_pressed(vk_space) // virtual key for attacking is space
	{ 
		event_user(0)
		has_interacted = true
	}
	
	if instance_exists(text_bubble) { exit }
	
	// TODO - fix position depending on text height?
	text_bubble = instance_create(x+60, y-140, obj_npc_speech_bubble)
	text_bubble.text = text
}
else
{
	has_interacted = false
	instance_destroy(text_bubble)
}

