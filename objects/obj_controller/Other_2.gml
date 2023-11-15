/// @description  game start

scr_particle_system()

game_set_speed(60, gamespeed_fps);


global.user = "GM"
global.error = ""
global.show_debug = false
global.overall_view = false // show the entire room


global.system = "" // incase there is no OS type?
if os_type = os_windows {global.system = "Windows"}
if os_type = os_android {global.system = "Android"}

// global.system = "Android" // testing hud


// in-game variables

global.player_start_x = 0 // set where the player first spawns in the room
global.player_start_y = 0



randomize() // randomize gamemakers seed



// SETTINGS
global.joystick_enabled = true





/// saved global variables and then try load game


scr_initialize() // initialize all the saved global variables

scr_load_game() // if no save game then these variables aren't overridden




