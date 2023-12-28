
event_inherited()

name = "Drone Operator"
level = 20
hp = 100
attack = 50
defence = 20
accuracy = 5
experience = 150

walkspeed = 2
jump = 0
heal_time = 0 // seconds
heal_amount = 0

aggressive = true // move/attack an enemy when unprovoked
can_be_knockedback = true
can_be_stunned = false

// skill
attack_ability = mob_attack_shoot
has_attack_ability = true // projectiles, skills etc.
attack_distance = 200 // distance before attacking player

block_distance = 0 // distance for checking how far away blocks are (before jumping)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = sprite_index
sprite_walk = sprite_index
sprite_jump = sprite_index
sprite_dead = spr_mob_drone_commander_dead
sprite_attack = sprite_index
sprite_projectile = spr_projectile_rocket

projectile_obj = obj_projectile_mob_tracking

image_speed = 0.1

mob_after_initialised() // don't remove
