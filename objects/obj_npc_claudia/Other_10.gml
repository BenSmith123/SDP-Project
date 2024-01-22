
// log_player_message("Testing closer room view")

var w = global.screen_w
var h = global.screen_h

global.screen_w = round(global.screen_w * 0.75)
global.screen_h = round(global.screen_h * 0.75)

global.name = "13"

initialise_views()

display_set_gui_size(w, h)
// display_set_gui_size(display_get_gui_width(), display_get_gui_height())




//instance_destroy(arrow_key_parent)
//initialise_virtual_key_globals()
//global.vk_size = 100
//create_mobile_virtual_keys()


//room_restart()
