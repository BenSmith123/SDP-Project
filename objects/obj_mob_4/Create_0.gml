
name = "Unknown"
level = 1
maxhp = 50
attack = 25
defence = 5
accuracy = 15

aggressive = false

block_distance = 40 // (set in script) distance for checking how far away blocks are
jump_block_height = -40 // how high a block can be for ai to try jump
drop_distance = 150 // how far below a player is before 
detect_distance = 360 // how far can an ai spot a player
health_run_percent = 20 // percent that health has to be before running away

sprite_stand = spr_mob_4_walk
sprite_walk = spr_mob_4_walk
sprite_jump = spr_player_jump
sprite_dead = spr_mob_4_dead
//sprite_attack = choose(spr_player_attack_2, spr_player_attack_5)
//sprite_projectile = spr_bullet_2

walkspeed = 4
jump = 10
heal_time = 2 // seconds
heal_amount = 10

experience = 50

tag_y = 40 // y position to show the name and hp

scr_ai_initialize()

//attack_ability = true
//attack_distance = 400 // distance before attacking player
