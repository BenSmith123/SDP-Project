
depth = ObjectDepth.Controller

// fade in
var transition = instance_create(x, y, obj_map_transition)
transition.image_alpha = 1


initialise_display()

set_room_block_sprite()

target = 0 // what player to target for the camera

room_start_messages() // display room messages (if any)
