
if text_sprite = spr_pause_resume // resume
{
	with (obj_pause_button) event_perform_object(obj_pause_button, ev_other, ev_user0)
}

if text_sprite = spr_pause_quit // quit to main menu
{
	game_end()
}

