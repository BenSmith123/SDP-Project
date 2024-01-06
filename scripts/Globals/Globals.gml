// @description initialise session globals (not stored)
function initialise_globals()
{
	// DEBUG
	global.is_game_master = true
	global.error = ""
	global.show_debug = false
	global.overall_view = false // show the entire room
	
	// SYSTEM
	global.system = os_type == os_windows || os_type == os_macosx
		?  SystemType.Desktop
		:  SystemType.Mobile
		
	// alternative vars to reduce code :)
	global.is_mobile = global.system == SystemType.Mobile
	global.is_desktop = global.system == SystemType.Desktop
	
	// default window resolution without fullscreen
	global.desktop_default_width = 1280
	global.desktop_default_height = 720

	global.desktop_fullscreen = false
		
	global.screen_w = 0
	global.screen_h = 0
	set_screen_resolution()
	
	global.dialog_y_pos = (global.screen_h / 4) - 80 // position for all dialogs to be displayed

		
	// IN-GAME

	// set where the player first spawns in the room
	global.player_start_x = 0 
	global.player_start_y = 0
	global.session_first_spawn = true // spawn player where session ended
	global.respawn_map_name = "room_village"
	global.came_from_left_map = true // determine what side of the map to place character on room start
	global.inventory_size_max = 42

	global.last_log_message_obj = noone // tracking duplicate messages to stack

	// SETTINGS
	global.joystick_enabled = true
	
	// FILES
	var save_file_id = "_200" // change this to force reset a users game save on install
	global.file_save_encoded_name = "temp" + save_file_id
	global.file_save_decoded_name = "temp_2" + save_file_id
}


/// @description initialise stored global global variables
function initialise_stored_globals()
{
	
	// inventory
	global.inventory_size = 21
	global.inventory_array = []
	// array items: ["itemId", amount]
	
	// equips - TODO save these equip vars
	global.equip_item_id_primary = ItemId.BeginnersSword // sword, bow
	global.equip_item_id_secondary = 0 // throwing star, arrow, shield
	
	// icon
	// type: primary/secondary? - not yet needed
	// class
	
	
	// game
	global.current_map_name = "room_test"
	global.current_player_x = -1
	global.current_player_y = -1

	// player attributes
	global.class = "Beginner"
	global.name = choose("Ben705", "Hell0_", "Steve007", "Tiger", "xVaderx")
	global.level = 1
	global.experience = 0
	global.max_exp = 10
	
	global.stat_points = 0

	global.max_hp = 50
	global.hp_last = global.max_hp // last known player HP (not necessarily the current - used for storing between maps or sessions)

	global.attack = 6
	global.defence = 0
	global.accuracy = 0
	global.jump = 12
	global.walk_speed = 4

	global.heal_time = 7 // seconds
	global.heal_amount = 10 

	global.coins = 0
	global.coins_stored = 0
	
	// statistics
	global.mob_kills_current = 0
	global.mob_kills = 0
}
