function ai_draw_debug_info() 
{
	
	if global.show_debug = false { exit }
	
	// debug collision mask
	draw_set_alpha(0.4)
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_green,c_green,c_green,c_green,false);
	draw_set_alpha(1)
	
	scr_text_1()
	
	draw_text(x,y+75,"State: " +string(state))
		
	if keyboard_check_pressed(ord("7")) {show_main_variables = !show_main_variables}
	if keyboard_check_pressed(ord("8")) {show_detect_distance = !show_detect_distance}
	if keyboard_check_pressed(ord("9")) {show_xy_meeting = !show_xy_meeting}
	//if keyboard_check_pressed(ord("7")) {show_platform_variables = !show_platform_variables}
    
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
		
		show_xy_meeting = false
	}
    
	if show_xy_meeting
	{
		draw_text(x,y-140,"xy meeting")
	    draw_text(x-y_meet,y,"---")
	    draw_text(x+y_meet,y,"---")
	    draw_text(x,y-x_meet,"|")
	    draw_text(x,y+x_meet,"|")
		show_detect_distance = false
	}
	
	if show_platform_variables == true
	{
	    //draw_rectangle(x,y,x-leftx,y,false)
	    //draw_rectangle(x,y,x+rightx,y,false)
	}

}
