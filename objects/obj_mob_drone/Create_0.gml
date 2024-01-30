
event_inherited()

name = "Drone"
level = 1
hp = 25
attack = 5
defence = 2
accuracy = 5
experience = 10

walkspeed = 2
jump = 0
heal_time = 0 // seconds
heal_amount = 0

aggressive = false // move/attack an enemy when unprovoked
can_be_knockedback = true

// skill
has_attack_ability = false // projectiles, skills etc.
attack_distance = 0 // distance before attacking player

block_distance = 3 // distance for checking how far away blocks are (before jumping or turning around)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 0 // percent that health has to be before running away

sprite_stand = spr_drone_walking
sprite_hit = spr_drone_hit
sprite_walk = spr_drone_walking
sprite_jump = spr_drone
sprite_dead = spr_drone_dead
sprite_attack = spr_drone_walking

image_speed = 1

mob_after_initialised() // don't remove
