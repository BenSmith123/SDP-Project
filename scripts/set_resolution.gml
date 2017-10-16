

room_speed = 60 

view_enabled = true
view_visible[0] = true

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = WIDTH
view_hport[0] = HEIGHT

view_xview[0] = 0
view_yview[0] = 0
view_wview[0] = WIDTH
view_hview[0] = HEIGHT


if IS_WINDOWS
{
    window_set_fullscreen(true)
    window_set_size(view_wport[0], view_hport[0])
}

