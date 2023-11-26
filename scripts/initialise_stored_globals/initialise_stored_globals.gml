/// @description  saved global variables
function initialise_stored_globals()
{
	
	// inventory
	global.inventory_array = array_create(10, noone) // TODO - 10
	// array items: ["itemName", amount]
	inventory_add(ItemId.DronePiece, 3)
	
	// game
	global.current_map_name = "room1"
	global.current_player_x = -1
	global.current_player_y = -1
	
	// stats
	global.current_kills = 0
	global.kills = 0

	// player attributes
	global.class = "Beginner"
	global.name = choose("Ben705", "Hello7", "Shin0bi", "Tiger")
	global.level = 1
	global.experience = 0
	global.max_exp = 10

	global.max_hp = 10

	global.attack = 2
	global.defence = 5
	global.accuracy = 2
	global.jump = 12
	global.walk_speed = 5

	global.heal_time = 7 // seconds
	global.heal_amount = 10 

	global.coins = 0
}
