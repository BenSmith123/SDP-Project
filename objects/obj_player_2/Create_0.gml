
// set where the player first spawns in the room
global.player_start_x = x
global.player_start_y = y

//instance_create(x,y,obj_hud)

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
start_speed = global.start_speed
walk_speed = global.walk_speed

heal_time = global.heal_time // seconds
heal_amount = global.heal_amount



// IN-GAME
friction = 0.25
image_xscale = 1
image_yscale = 1
hp = global.max_hp
stance = "Spawn"
image_speed = 0.1
can_attack = true
attacking = false
move_direction = "" // for when key or arrow is pressed
bullet = 0 // creating bullet object
can_be_hit = true // when the player can be hit again after taking damage

head_x = 0 // the x position for the head (to match all player sprites)

// movement variables
move_left = false
move_right = false
move_jump = false
move_attack = false
move_temp = false // debug

// SKILLS

// double jump
second_jump = false 





