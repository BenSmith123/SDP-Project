/// @description  debug game controls - ran by obj_controller
function global_game_controls()
{
	
	if !global.is_game_master { exit }
	
	// TEMP DEBUG
	if keyboard_check_pressed(ord("E"))
	{
		test_player_skill()
		//log_player_message("Testing message - 4573")
		//room_goto(room1)
		//show_message(global.inventory_array)
		//inventory_add(ItemId.DronePiece)
	}

	if keyboard_check_pressed(ord("1")) { global.show_debug = !global.show_debug }
    
	if instance_exists(obj_player)
	{
		if keyboard_check_pressed(ord("2")) { obj_player.x = mouse_x; obj_player.y = mouse_y }

	    if keyboard_check_pressed(ord("3")) 
	    {
	        level_up()
	    }
		
		//if keyboard_check_pressed(ord("4")) 
	    //{
		//	global.max_hp = 5000
		//	global.attack = 500
		//	global.class = "Hunter"
		//	global.walk_speed = 7
		//	global.jump = 16
			
		//	level_up()
			
		//	display_banner_message("Cheater") // lol
	    //}
		
		if keyboard_check_pressed(ord("6")) 
	    {
		    var choice = choose(obj_ai_1,obj_ai_3)
		    instance_create(mouse_x,mouse_y,choice)
	    }
		
		if keyboard_check_pressed(ord("M"))
	    {
			global.system = global.system == SystemType.Desktop
				? SystemType.Mobile
				: SystemType.Desktop
			set_screen_resolution()
			room_restart()
	    }
		
	}
	
	// hard reset game
	if keyboard_check_pressed(ord("0")) { reset_game() }
        
    
	if keyboard_check_pressed(vk_f1) {show_message(get_game_controls_text() + get_game_debug_controls_text())}

	if keyboard_check_pressed(vk_f2) { global.overall_view = !global.overall_view; room_restart() }
	
	if keyboard_check_pressed(vk_f9) 
	{ 
		global.desktop_fullscreen = !global.desktop_fullscreen
		set_screen_resolution()
		initialise_display()
	}
    
	if keyboard_check_pressed(vk_f10) { global.came_from_left_map = false; move_to_map(true) }
	
	if keyboard_check_pressed(vk_f11) { global.came_from_left_map = true; move_to_map() }

	if keyboard_check_pressed(vk_f12) { game_restart() }
    
	if keyboard_check_pressed(vk_escape) 
	{
		if instance_exists(parent_dialog) { instance_destroy(parent_dialog) exit }
		save_game()
		game_end()
	}
		
		
    

	// instance_deactivate_region(view_xview[0],view_yview[0],WIDTH,HEIGHT,false,true)

}