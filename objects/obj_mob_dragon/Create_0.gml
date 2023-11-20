
name = "Armored Dragon"
level = 1
maxhp = 5000
attack = 100
defence = 200
accuracy = 15

aggressive = true

block_distance = 40 // (set in script) distance for checking how far away blocks are
jump_block_height = 0 // how high a block can be for ai to try jump
drop_distance = 0 // how far below a player is before 
detect_distance = 1000 // how far can an ai spot a player
health_run_percent = 0 // percent that health has to be before running away
can_be_knockedback = false // don't apply physics when hit

sprite_stand = spr_mob_dragon_stand
sprite_walk = spr_mob_dragon_walk
sprite_jump = spr_mob_dragon_stand
sprite_dead = spr_player_dead
sprite_attack = spr_player_attack_2

walkspeed = 1
jump = 0
heal_time = 0 // seconds
heal_amount = 10

experience = 500

tag_y = 60 // y position to show the name and hp

scr_ai_initialize()

// override default
can_be_knockedback = false

