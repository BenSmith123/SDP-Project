function ai_draw_debug_info() 
{
	if global.show_debug = false { exit }
	
	if keyboard_check_pressed(ord("7")) {show_main_variables = !show_main_variables}
	if keyboard_check_pressed(ord("8")) {show_detect_distance = !show_detect_distance}
	if keyboard_check_pressed(ord("9")) {show_debug_3 = !show_debug_3}
	
	// debug collision mask
	draw_set_alpha(0.4)
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_green,c_green,c_green,c_green,false);
	draw_set_alpha(1)
	
	
	// draw default variables
	scr_text_1()
	
	draw_text(x,y+100,(
	string_hash_to_newline(
		"state: " +string(state) +
		"#stay: " +string(stay) +
		"#stunned: " +string(stunned) +
		"#sprite: " + sprite_get_name(sprite_index)
	)))
	
    // optional debugging vars
	if show_main_variables
	{	
	    draw_text(x,y-100,(
		string_hash_to_newline(
			"attack: " +string(attack) + 
			"#defence: " +string(defence) +
			"#speed x: " +string(speed_in_direction) +
			"#hp: " +string(hp)
		)))
	}
    
	if show_detect_distance
	{
		draw_text(x,y-120,"detect distance")
	    draw_text(x-detect_distance-sprite_width,y,"|")
	    draw_text(x+detect_distance+sprite_width,y,"|")
	    draw_text(x,y-detect_distance,"--")
	    draw_text(x,y+detect_distance,"--")
		
		draw_text(x,y-75,(
			string_hash_to_newline(
				"x: " +string(x) + 
				" y:" +string(y)
			))
		)
		
		show_debug_3 = false
	}
    
	if show_debug_3
	{
		// debug here

		show_detect_distance = false
	}

}
