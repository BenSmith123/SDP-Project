/// @description  game start

initialise_particle_system()

game_set_speed(60, gamespeed_fps);

randomize() // randomize gamemakers seed

initialise_globals();

initialise_stored_globals() // initialise all the saved global variables

load_game() // if no save game then these variables aren't overridden


//var game_version = "0.3.0"
//window_set_caption($"{game_display_name} [v{game_version}]")
