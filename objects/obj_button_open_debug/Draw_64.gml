
var mobile_debug_is_open = instance_exists(obj_button_mobile_debug)

if mobile_debug_is_open
{
	draw_sprite_stretched_ext(spr_black,0,0,0,global.screen_w,global.screen_h,c_black,0.4)
}

event_inherited()
