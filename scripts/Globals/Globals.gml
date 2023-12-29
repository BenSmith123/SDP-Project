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
	
	// default window resolution without fullscreen
	global.desktop_default_width = 1280
	global.desktop_default_height = 720

	global.desktop_fullscreen = false
		
	global.screen_w = 0
	global.screen_h = 0
	set_screen_resolution()

		
	// IN-GAME

	// set where the player first spawns in the room
	global.player_start_x = 0 
	global.player_start_y = 0
	global.session_first_spawn = true // spawn player where session ended
	global.respawn_map_name = "room_village"
	global.came_from_left_map = true // determine what side of the map to place character on room start

	global.last_log_message_obj = noone

	// SETTINGS
	global.joystick_enabled = true
}


/// @description initialise stored global global variables
function initialise_stored_globals()
{
	
	// inventory
	global.inventory_size = 42
	global.inventory_array = []//array_create(global.inventory_size, noone) // TODO - 10
	// array items: ["itemId", amount]
	
	// game
	global.current_map_name = "room_test"
	global.current_player_x = -1
	global.current_player_y = -1
	
	// stats
	global.current_kills = 0
	global.kills = 0

	// player attributes
	global.class = "Beginner"
	global.name = choose("Ben705", "Hell0_", "Steve007", "Tiger", "xVaderx")
	global.level = 1
	global.experience = 0
	global.max_exp = 10

	global.max_hp = 50

	global.attack = 6
	global.defence = 0
	global.accuracy = 0
	global.jump = 12
	global.walk_speed = 4

	global.heal_time = 7 // seconds
	global.heal_amount = 10 

	global.coins = 0
	global.coins_stored = 0
}
