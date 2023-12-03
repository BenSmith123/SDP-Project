
event_inherited()

name = "Drone"
level = 1
hp = 25
attack = 5
defence = 0
accuracy = 5
experience = 15

walkspeed = 2
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

sprite_stand = spr_drone_walking
sprite_walk = spr_drone_walking
sprite_jump = spr_drone
sprite_dead = spr_drone_dead
sprite_attack = spr_drone_walking

image_speed = 0.1

mob_after_initialised() // don't remove
