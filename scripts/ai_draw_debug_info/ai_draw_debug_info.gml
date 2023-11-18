function ai_draw_debug_info() 
{
	
	if global.show_debug = false { exit }
	
	if keyboard_check_pressed(ord("1")) {show_detect_distance = !show_detect_distance}
	if keyboard_check_pressed(ord("2")) {show_xy_meeting = !show_xy_meeting}
	if keyboard_check_pressed(ord("3")) {show_main_variables = !show_main_variables}
	if keyboard_check_pressed(ord("4")) {show_platform_variables = !show_platform_variables}

	if show_platform_variables = true
	{
	    draw_sprite(spr_marker,0,block.x,block.y)
	    draw_sprite(spr_marker,0,block2.x,block2.y)
        
	    draw_text(x,y-80,string_hash_to_newline(platform_width))
        
	    draw_rectangle(x,y,x-leftx,y,false)
	    draw_rectangle(x,y,x+rightx,y,false)
        
	    platform_x_left = x-leftx
	    platform_x_right = x+rightx
    
	}
    
	if show_main_variables = true
	{
	    draw_text(x,y-100,"state " +string(state))
	    draw_text(x,y-75,(
		string_hash_to_newline(
			"x: " +string(x) + 
			"# y:" +string(y)
		)))
	    //draw_text(x,y-55,"aggressive: " +string(aggressive))

	}
    
	if show_detect_distance = true
	{
	    draw_text(x-detect_distance-sprite_width,y,string_hash_to_newline("d"))
	    draw_text(x+detect_distance+sprite_width,y,string_hash_to_newline("d"))
	    draw_text(x,y-detect_distance,string_hash_to_newline("d"))
	    draw_text(x,y+detect_distance,string_hash_to_newline("d"))
	}
    
	if show_xy_meeting = true
	{
	    draw_text(x-y_meet,y,string_hash_to_newline("---"))
	    draw_text(x+y_meet,y,string_hash_to_newline("---"))
	    draw_text(x,y-x_meet,string_hash_to_newline("|"))
	    draw_text(x,y+x_meet,string_hash_to_newline("|"))
	}

}