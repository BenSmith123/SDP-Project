
depth = ObjectDepth.Controller

initialise_display()

set_room_block_sprite()

target = 0 // what player to target for the camera


// debug - skip the menu
if (room == room_menu) alarm[0] = 5

room_start_messages() // display room messages (if any)
