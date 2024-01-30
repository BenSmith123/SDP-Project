
event_inherited()

name = "Training bot"
level = 1
hp = 8
attack = 5
defence = 0
accuracy = 0
experience = 5

walkspeed = 1
jump = 0
heal_time = 0 // seconds
heal_amount = 0

aggressive = false // move/attack an enemy when unprovoked
can_be_knockedback = true

// skill
has_attack_ability = false // projectiles, skills etc.
attack_distance = 0 // distance before attacking player

block_distance = 3 // distance for checking how far away blocks are (before jumping)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = sprite_index
sprite_hit = sprite_index
sprite_walk = sprite_index
sprite_jump = sprite_index
sprite_dead = spr_mob_training_bot_2_dead
sprite_attack = sprite_index

image_speed = 1

mob_after_initialised() // don't remove
