
event_inherited()

name = "Armored Dragon"
level = 1
hp = 5000
attack = 100
defence = 100
accuracy = 50
experience = 1000

walkspeed = 1
jump = 0
heal_time = 0
heal_amount = 0

aggressive = true
can_be_knockedback = false
can_be_stunned = false


// skill
has_attack_ability = true // projectiles, skills etc.
attack_distance = 0 // distance before attacking player

block_distance = 0 // distance for checking how far away blocks are (before jumping)
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = spr_mob_dragon_stand
sprite_walk = spr_mob_dragon_walk
sprite_jump = spr_mob_dragon_stand
sprite_dead = spr_player_dead
sprite_attack = spr_player_attack_2

image_speed = 1

mob_after_initialised() // don't remove

