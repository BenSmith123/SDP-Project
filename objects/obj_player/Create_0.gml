
depth = ObjectDepth.Player

// set where the player first spawns in the room
global.player_start_x = x
global.player_start_y = y

// use last known player position if continuing saved game
if global.session_first_spawn 
&& global.current_player_x != -1
&& asset_get_index(global.current_map_name) == room 
{
	x = global.current_player_x
	y = global.current_player_y
	global.session_first_spawn = false
}

// store room for when game is next loaded
global.current_map_name = room_get_name(room)

if global.joystick_enabled = true {instance_create(x,y,obj_joystick)}


// CONSTANT
state = "-" // temporary (testing)
collision_distance = 5 // for when player is about to hit a block

// ATTRIBUTES

max_hp = global.max_hp

attack = global.attack
defence = global.defence

accuracy = global.accuracy

jump = global.jump
walk_speed = global.walk_speed

heal_time = global.heal_time // seconds
heal_amount = global.heal_amount



// IN-GAME
friction = 0.25
image_xscale = 1
image_yscale = 1
hp = global.max_hp
stance = "Spawn"
_image_speed = 0.1 // default image_speed to revert back to
image_speed = _image_speed
can_attack = true
attacking = false
move_direction = "" // for when key or arrow is pressed
bullet = 0 // creating bullet object
can_be_hit = true // when the player can be hit again after taking damage
start_speed = global.walk_speed
second_jump = false // see if its the players second jump

head_x = 0 // the x position for the head (to match all player sprites)

// movement variables
move_left = false
move_right = false
move_jump = false
move_attack = false
move_temp = false // debug

// SKILLS


collision_tilemap = layer_tilemap_get_id("Tiles_1")

// This is the horizontal movement speed of the character.
// It's in pixels per second.
move_speed = 6

// This is the friction value applied to the character's horizontal movement every frame.
// This is applied in the Begin Step event. The friction is reduced when the character is in mid-air.
friction_power = 0.5

// This is the jumping speed of the character.
jump_speed = 14

// This is the gravity applied every frame.
grav_speed = 0.75

// vel_x and vel_y are the X and Y velocities of the character.
// They store how much the character is moving in any given frame.
vel_x = 0
vel_y = 0

grounded = false
in_knockback = false


instance_create(x,y,obj_hud)

set_classes()





