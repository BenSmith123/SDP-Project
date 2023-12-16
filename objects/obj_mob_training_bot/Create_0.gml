
event_inherited()

name = "Training Bot"
level = 1
hp = 10
attack = 2
defence = 0
accuracy = 5
experience = 5

walkspeed = 0
jump = 0
heal_time = 0 // seconds
heal_amount = 0

aggressive = false // move/attack an enemy when unprovoked
can_be_knockedback = false

// skill
has_attack_ability = false // projectiles, skills etc.
attack_distance = 0 // distance before attacking player

block_distance = 0 // distance for checking how far away blocks are (before jumping)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 0 // percent that health has to be before running away

sprite_stand = spr_mob_training_bot
sprite_walk = spr_mob_training_bot
sprite_jump = spr_mob_training_bot
sprite_dead = spr_mob_training_bot_dead
sprite_attack = spr_mob_training_bot

animated_death = true

image_speed = 0.3

mob_after_initialised() // don't remove