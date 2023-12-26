/// @param {String}
function log_player_message(text)
{
	var last_message_obj = global.last_log_message_obj
	
	if instance_exists(last_message_obj)
	{
		if last_message_obj.text == text
		{
			last_message_obj.repeat_message()
			exit
		}
	}
	
	// trigger existing text to move up
	with(obj_hud_log_text) {
		event_perform(ev_other, ev_user0)
	}
	
	global.last_log_message_obj = instance_create(0, 0, obj_hud_log_text)
	global.last_log_message_obj.text = text
}