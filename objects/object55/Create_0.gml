

name = "test"
level = 1
maxhp = 100
attack = 0
defence = 40
accuracy = 15

aggressive = false // move/attack an enemy when enemy is unprovoked

block_distance = 10 // distance for checking how far away blocks are (before jumping)
jump_block_height = -10 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 100 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away


sprite_stand = spr_drone_walking
sprite_walk = spr_drone_walking
sprite_jump = spr_drone
sprite_dead = spr_drone_dead

walkspeed = 0
jump = 1
heal_time = 0
heal_amount = 10 


scr_ai_initialize()



