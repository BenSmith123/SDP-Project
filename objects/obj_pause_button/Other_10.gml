
paused = !paused

if !paused
{
	with (obj_pause_menu) { instance_destroy() }
	instance_activate_all()
	surface_free(paused_surface)
	paused_surface = -1
}
