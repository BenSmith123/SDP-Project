
depth = ObjectDepth.Player
player_set_start_position()

// store room for when game is next loaded
global.current_map_name = room_get_name(room)

//if global.system == SystemType.Mobile {
instance_create(WIDTH * 0.8, 32, obj_button_open_inventory)
instance_create(WIDTH * 0.7, 20, obj_button_open_debug)

if global.joystick_enabled { instance_create(x,y,obj_joystick) }

// CONSTANT
state = "-" // temporary (testing)
collision_distance = 5 // for when player is about to hit a block

// ATTRIBUTES

max_hp = global.max_hp

attack = global.attack
defence = global.defence

accuracy = global.accuracy

jump = global.jump
walk_speed = global.walk_speed // horizontal movement speed of the character (pixels per sec)

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
item_on_back_sprite = 0 // set by classes i.e. carry bow or sword
can_attack = true
attacking = false
move_direction = "" // for when key or arrow is pressed
can_be_hit = true // when the player can be hit again after taking damage
can_be_hit_time = 60 // time in steps (1sec)
start_speed = global.walk_speed
has_second_jump_skill = global.is_game_master || global.class == "Ninja"
has_teleport_skill = global.class == "Spellcaster"
second_jump = false // see if its the players second jump
melee_attack_range = 100
disable_block_collision = false // used for jumping down through SLOPE blocks
is_on_ladder = false


head_x = 0 // the x position for the head (to match all player sprites)

// movement variables
move_left = false
move_right = false
move_jump = false
move_jump_down = false
move_attack = false
move_temp = false // debug


collision_tilemap = layer_tilemap_get_id("CollisionTiles")

// friction value applied to the character's horizontal movement every frame
// the friction is reduced when the character is in mid-air
friction_power = 0.5 // NOTE - changing to 1 might cause a bug where player sometimes faces other way after moving

// gravity applied every frame
grav_speed = 0.75

// vel_x and vel_y are the X and Y velocities of the character
vel_x = 0
vel_y = 0

grounded = false

instance_create(x,y,obj_hud)

set_classes()
