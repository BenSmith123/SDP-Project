// initialise and default every mob variable

// big code comment: https://patorjk.com/software/taag/#p=display&f=Ivrit

//   ____                            _             
//  / ___| __ _ _ __ ___   ___ _ __ | | __ _ _   _ 
// | |  _ / _` | '_ ` _ \ / _ \ '_ \| |/ _` | | | |
// | |_| | (_| | | | | | |  __/ |_) | | (_| | |_| |
//  \____|\__,_|_| |_| |_|\___| .__/|_|\__,_|\__, |
//                            |_|            |___/ 
// (used in game - not modified by different mobs)

instance_create(x,y,obj_fx_teleport) // TODO - spawn fx
friction = 0.1

// IN-GAME
enemy = obj_player // nearest enemy
image_xscale = choose(-1,1) // which way to start walking
depth = ObjectDepth.Mob
attacker = "" // player that attacked
state = "Spawn.." // debug
can_shoot = true
can_turn = true
stay = false // done move (while fighting, etc)
hurt = false // ? unused atm
show_hp = false // only show hp when provoked
healthbar_colour = HealthColour.Green
is_on_ground = false
has_been_attacked = false
is_left_of_enemy = false
facing_left = false
reached_dead_end = false // used to override the direction when running from player (avoids ai walking through walls when running away)
attacking = false // for sprite managing
soft_kill = false // when ai is not killed by the player, don't reward
speed_in_direction = 0 // hspeed or negative hspeed (depending on direction)

// idle randoml
alarm[1] = irandom_range_frames(6, 12)


// DEBUG 
show_detect_distance = false
show_xy_meeting = false
show_main_variables = false
show_platform_variables = false

//  ____        __             _ _       
// |  _ \  ___ / _| __ _ _   _| | |_ ___ 
// | | | |/ _ \ |_ / _` | | | | | __/ __|
// | |_| |  __/  _| (_| | |_| | | |_\__ \
// |____/ \___|_|  \__,_|\__,_|_|\__|___/
//
// (either unused or overridden by mobs)

name = "?"
level = 1
maxhp = 10
attack = 5
defence = 0
accuracy = 5
experience = 0

walkspeed = 0
jump = 0
heal_time = 0 // seconds
heal_amount = 0

aggressive = false // move/attack an enemy when unprovoked
can_be_knockedback = true

// skill
attack_ability = false // projectiles, skills etc.
attack_distance = 0 // distance before attacking player

block_distance = 0 // distance for checking how far away blocks are (before jumping)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = sprite_index
sprite_walk = sprite_index
sprite_jump = sprite_index
sprite_dead = sprite_index
sprite_attack = sprite_index
sprite_projectile = spr_projectile_laser

animated_death = false

image_speed = 0.1
