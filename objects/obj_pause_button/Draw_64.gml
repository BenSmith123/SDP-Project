
// update x/y values to keep the mask_index in the same place
// that the GUI is drawn (otherwise tapping won't work)
//x = __view_get( e__VW.XView, 0 )+WIDTH-10
//y = __view_get( e__VW.YView, 0 )+10
x = WIDTH-10
y = 10

draw_sprite(sprite_index,0,x,y)

if (!paused) { exit }

if !surface_exists(paused_surface)
{
	if paused_surface == -1
	{
		// NOTE - must be done here otherwise draw/create order is messed up
		instance_deactivate_all(true);
		instance_activate_object(obj_controller)
		create_pause_menu()
	}
	paused_surface = surface_create(WIDTH, HEIGHT)
	surface_set_target(paused_surface)
	draw_surface(application_surface, 0, 0)
	surface_reset_target()
}
else
{
	draw_surface(paused_surface, 0, 0)
	draw_set_alpha(0.4)
	draw_rectangle_colour(0, 0, WIDTH, HEIGHT, c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1) // DON'T REMOVE (will cause other draw events to be transparent)
}
