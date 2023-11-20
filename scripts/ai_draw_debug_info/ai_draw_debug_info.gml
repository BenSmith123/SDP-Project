function ai_draw_debug_info() 
{
	
	if global.show_debug = false { exit }
	
	if keyboard_check_pressed(ord("1")) {show_detect_distance = !show_detect_distance}
	if keyboard_check_pressed(ord("2")) {show_xy_meeting = !show_xy_meeting}
	if keyboard_check_pressed(ord("3")) {show_main_variables = !show_main_variables}
	if keyboard_check_pressed(ord("4")) {show_platform_variables = !show_platform_variables}

	if show_platform_variables == true
	{
	    //draw_rectangle(x,y,x-leftx,y,false)
	    //draw_rectangle(x,y,x+rightx,y,false)
	}
    
	if show_main_variables = true
	{
	    draw_text(x,y-100,"state " +string(state))
	    draw_text(x,y-75,(
		string_hash_to_newline(
			"x: " +string(x) + 
			"# y:" +string(y)
		)))
	}
    
	if show_detect_distance == true
	{
		draw_text(x,y-120,"detect distance")
	    draw_text(x-detect_distance-sprite_width,y,"|")
	    draw_text(x+detect_distance+sprite_width,y,"|")
	    draw_text(x,y-detect_distance,"--")
	    draw_text(x,y+detect_distance,"--")
		show_xy_meeting = false
	}
    
	if show_xy_meeting == true
	{
		draw_text(x,y-140,"xy meeting")
	    draw_text(x-y_meet,y,"---")
	    draw_text(x+y_meet,y,"---")
	    draw_text(x,y-x_meet,"|")
	    draw_text(x,y+x_meet,"|")
		show_detect_distance = false
	}

}
