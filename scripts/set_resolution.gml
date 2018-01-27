
if global.toggle_resolution_scale == false
{
    ww = WIDTH
    hh = HEIGHT
}
else
{
    ww = 960
    hh = 640
}

room_speed = 60 


window_set_fullscreen(true)
window_set_size(view_wport[0], view_hport[0])


view_enabled = true
view_visible[0] = true

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = ww
view_hport[0] = hh

view_xview[0] = 0
view_yview[0] = 0
view_wview[0] = ww
view_hview[0] = hh

display_set_gui_size(ww,hh)

surface_resize(application_surface, ww, hh);

