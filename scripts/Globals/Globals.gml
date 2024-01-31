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
	initialise_game_display()
	// camera view width/height (same as screen but can differ with zoom)
	global.view_w = global.screen_w
	global.view_h = global.screen_h
	
	global.zoom_view = global.is_mobile // zoom in by default on mobile
	
	global.dialog_y_pos = (global.screen_h / 4) - 80 // position for all dialogs to be displayed

		
	// IN-GAME
	global.all_items_array = initialise_items()

	// set where the player first spawns in the room
	global.player_start_x = 0 
	global.player_start_y = 0
	global.session_first_spawn = true // spawn player where session ended
	global.player_is_respawning = false // used to place player at a spawn position after dying
	global.respawn_map_name = "room_village"
	global.came_from_left_map = true // determine what side of the map to place character on room start
	global.inventory_size_max = 42

	global.last_log_message_obj = noone // tracking duplicate messages to stack

	// SETTINGS
	global.joystick_enabled = true
	
	// FILES
	var save_file_id = "_500" // change this to force reset a users game save on install
	global.file_save_encoded_name = "temp" + save_file_id
	global.file_save_decoded_name = "temp_2" + save_file_id
}


/// @description initialise stored global global variables
/// NOTE - this function is basically for GMS intellisense and default values,
/// anything added here will need to be added to the 'stored_global_variables_list' below to load/save
function initialise_stored_globals()
{
	// inventory
	global.inventory_size = 21
	global.inventory_array = []
	// array items: ["itemId", amount]
	
	// equips
	global.equip_item_id_primary = ItemId.BeginnersSword // sword, bow
	global.equip_item_id_secondary = -1 // arrow, shield
	
	// game
	global.current_map_name = "room_test"
	global.current_player_x = -1
	global.current_player_y = -1

	// player attributes
	global.player_skin_id = 1
	global.class = "Beginner"
	global.name = choose("Ben", "_mo_", "zlazz0", "J3tt.0", "Vilz", "Chocolate", "N00B", "tInA")
	global.level = 1
	
	global.experience = 0
	global.max_exp = 10
	global.stat_points = 0

	global.max_hp = 30
	global.hp_last = global.max_hp // last known player HP (not necessarily the current - used for storing between maps or sessions)
	
	global.equip_damage_multiplier = 0

	global.attack = 6
	global.defence = 0
	global.accuracy = 0
	global.jump = 14
	global.walk_speed = 4

	global.heal_time = 7 // seconds
	global.heal_amount = 10

	global.coins = 0
	global.coins_stored = 0
	
	// statistics
	global.mob_kills_current = 0
	global.mob_kills = 0
}


// ADDING TO THIS WILL AUTOMATICALLY LOAD/SAVE THE GLOBAL
global.stored_global_variables_list =
[
	// type is optional - defaults to 'Real'
	
	{ name: "inventory_size" },
	{ name: "inventory_array", type: IniType.Json},
	
	{ name: "equip_item_id_primary" },
	{ name: "equip_item_id_secondary"},

	{ name: "current_map_name", type: IniType.String },
	{ name: "current_player_x" },
	{ name: "current_player_y" },

	{ name: "player_skin_id" },
	{ name: "class", type: IniType.String },
	{ name: "name", type: IniType.String },
	{ name: "level" },
	{ name: "experience" },
	{ name: "max_exp" },
	{ name: "stat_points" },

	{ name: "max_hp" },
	{ name: "hp_last" },
	{ name: "equip_damage_multiplier" },
	{ name: "attack" },
	{ name: "defence" },
	{ name: "accuracy" },
	{ name: "jump" },
	{ name: "walk_speed" },

	{ name: "heal_time" },
	{ name: "heal_amount" },

	{ name: "coins" },
	{ name: "coins_stored" },

	{ name: "mob_kills_current" },
	{ name: "mob_kills" },
]





