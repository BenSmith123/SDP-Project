
var mobile_debug_is_open = instance_exists(obj_button_mobile_debug)

if mobile_debug_is_open
{
	// black background
	draw_sprite_stretched_ext(spr_black,0,0,0,global.screen_w,global.screen_h,c_black,0.5)
	
	// game build & version
	var text_x = global.screen_w - 100
	var text_y = 122
	
	scr_text_2()
	draw_set_valign(fa_top)
	draw_set_halign(fa_right)
	draw_text(text_x, text_y, $"Game version: {global.game_version}")
	
	draw_set_font(font_arial_12_bold)
	draw_text(text_x, text_y+32, $"Build ID: #{global.game_build_id}")
	
	draw_set_font(font_arial_8)
	draw_text(text_x, text_y+54, $"Timestamp: {get_game_build_timestamp()}")
}

event_inherited()
