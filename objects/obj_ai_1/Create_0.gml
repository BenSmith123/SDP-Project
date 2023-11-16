
name = "Drone"
level = 1
maxhp = 10
attack = 5
defence = 0
accuracy = 5

aggressive = false // move/attack an enemy when enemy is unprovoked

block_distance = 30 // distance for checking how far away blocks are (before jumping)
jump_block_height = -50 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before dropping down
detect_distance = 120 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = spr_drone_walking
sprite_walk = spr_drone_walking
sprite_jump = spr_drone
sprite_dead = spr_drone_dead
sprite_attack = spr_drone_walking

walkspeed = 4
jump = 0
heal_time = 0 // seconds
heal_amount = 0 

tag_y = 40 // y position to show the name and hp


scr_ai_initialize()



