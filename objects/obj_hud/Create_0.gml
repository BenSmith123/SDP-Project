
depth = ObjectDepth.HUD

lives_x = 30

health_colour = 0
low_health_alpha = 0

instance_create(x,y,obj_pause_button)

// create on screen buttons for mobile
if (global.system == SystemType.Mobile)
{
	initialise_virtual_key_globals()
	create_mobile_virtual_keys()
}
