/// @description  game start

initialise_particle_system()

game_set_speed(60, gamespeed_fps);

randomize() // randomize gamemakers seed

initialise_globals()

initialise_stored_globals() // initialise all the saved global variables

initialise_player_skins()

load_game() // if no save game then these variables aren't overridden

game_crash_report_to_discord() // check for game crash file & post to discord

//window_set_caption($"{game_display_name} [v{game_version}]")

// manually handle errors if game crashes
exception_unhandled_handler(function(error) { on_game_crash(error) })


// go to the map the player was on
var room_index = asset_get_index(global.current_map_name)

if room_exists(room_index)
{ room_goto(room_index) }
else
{ room_goto(room_test) }
