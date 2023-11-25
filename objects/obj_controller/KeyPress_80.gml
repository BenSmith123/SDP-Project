/// @description  pause game if playable level
if instance_exists(obj_pause_button)
{
	with (obj_pause_button) { event_perform_object(obj_pause_button, ev_other, ev_user0) }
}

