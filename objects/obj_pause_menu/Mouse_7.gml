
if text_sprite = spr_pause_resume // resume
{
    instance_activate_all()
    with (obj_pause_menu) instance_destroy()
}

if text_sprite = spr_pause_quit // quit to main menu
{
    instance_activate_all()
    room_goto(room_menu)
}

