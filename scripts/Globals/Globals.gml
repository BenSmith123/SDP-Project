// @description initialise session globals (not stored)
function initialise_globals()
{
	global.is_game_master = true
	global.error = ""
	global.show_debug = false
	global.overall_view = false // show the entire room


	global.system = "" // incase there is no OS type?
	if os_type = os_windows {global.system = "Windows"}
	if os_type = os_android {global.system = "Android"}

	// global.system = "Android" // testing hud

	// in-game variables

	// set where the player first spawns in the room
	global.player_start_x = 0 
	global.player_start_y = 0
	global.session_first_spawn = true // spawn player where session ended
	global.respawn_map_name = "room_village"
	global.came_from_left_map = false // determine what side of the map to place character on room start


	// SETTINGS
	global.joystick_enabled = true
}


/// @description initialise stored global global variables
function initialise_stored_globals()
{
	
	// inventory
	global.inventory_size = 18
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

	global.max_hp = 10

	global.attack = 6
	global.defence = 5
	global.accuracy = 0
	global.jump = 12
	global.walk_speed = 5

	global.heal_time = 7 // seconds
	global.heal_amount = 10 

	global.coins = 0
}
