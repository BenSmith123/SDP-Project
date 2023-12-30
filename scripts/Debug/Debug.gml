function draw_game_debug_info() 
{
	// debug game controls

	x = __view_get( e__VW.XView, 0 )
	y = __view_get( e__VW.YView, 0 )


	if !global.is_game_master || !global.show_debug { exit }
    
	scr_text_1()
	draw_set_halign(fa_left)

	draw_text(x+10,y+HEIGHT-240,string_hash_to_newline(""+string(display_get_width())))
        
	//draw_text(x+10,y+HEIGHT-200,"deviceX:  " +string(device_mouse_x(0)) +string("#deviceY: " +string(device_mouse_y(0))))
    
	//draw_text(x+10,y+HEIGHT-160,)
        
	draw_text(x+10,y+HEIGHT-120,string_hash_to_newline("width:  " +string(round(__view_get( e__VW.XView, 0 ))) +string("#width2: " +string(round(__view_get( e__VW.YView, 0 ))))))
	if instance_exists(obj_player)
	{draw_text(x+10,y+HEIGHT-80,string_hash_to_newline("playerX:  " +string(round(obj_player.x)) +string("#playerY:" +string(round(obj_player.y)))))}
        
	draw_text(x+10,y+HEIGHT-60,string_hash_to_newline("<F1 = show controls>"))
        
	draw_text(x+10,y+HEIGHT-40,string_hash_to_newline("ERROR: " +string(global.error)))
        
	draw_text(x+10,y+HEIGHT-20,string_hash_to_newline("DEBUG MODE ON: " +string(global.system)))

}


function debug_show_screen_info()
{
	global.name = string(global.screen_w) + "x" + string(global.screen_h)

	var system = global.system == SystemType.Desktop ? "Desktop" : "Mobile"

	var text = $"System: {system}#"
	text += $"Android: {os_type == os_android}#"
	text += $"Window res: {window_get_width()}x{window_get_height()}#"
	text += $"Display res: {display_get_width()}x{display_get_height()}#"
	text += $"Screen width: {global.screen_w}#"
	text += $"Screen height: {global.screen_h}#"
	text += $"WIDTH: {WIDTH}#"
	text += $"HEIGHT height: {HEIGHT}#"

	show_message_async(string_hash_to_newline(text))
}

