instance_activate_object(obj_hud)
instance_activate_object(obj_pause_button)
instance_activate_object(parent_hud_button)

// create keys on the right side of screen that were disabled
if global.is_mobile
{
	create_mobile_virtual_action_keys()
}

instance_destroy(parent_dialog_component)
