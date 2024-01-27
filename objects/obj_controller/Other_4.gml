
depth = ObjectDepth.Controller
part_system_depth(global.fx,ObjectDepth.Effect)

// fade in
var transition = instance_create(x, y, obj_map_transition)
transition.image_alpha = 1


initialise_views()


set_room_block_sprite()

room_start_messages() // display room messages (if any)
