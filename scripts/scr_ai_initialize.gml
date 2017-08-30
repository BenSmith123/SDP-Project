
// initialize all common varibles for each ai
// (called in create event of each AI)

x_meet = sprite_get_height(mask_index)/2 // distance for the x and enemy x for alignment (player above or below)
y_meet = sprite_get_width(mask_index)/2 // (player on same platform)
// ^^^ divided by two because -height to +height is double the players size

// debug
leftx = 0
rightx = 0
platform_width = 24
alarm[1] = 30


instance_create(x,y,obj_fx_teleport) // spawn fx


friction = 0.1
image_speed = 0.1

// IN-GAME
hp = maxhp
enemy = obj_player // nearest enemy


// IN-GAME
hp = maxhp
enemy = obj_player // nearest enemy

image_xscale = choose(-1,1) // which way to start walking
attacker = "" // player that attacked
state = "Spawn.." // debug
can_shoot = true
can_turn = true
stay = false // done move (while fighting, etc)
hurt = false // ? unused atm
show_hp = false // only show hp when provoked
tag_y = sprite_get_height(mask_index)/2 // get the mask height so it can draw the tags below (name, hp)
attacking = false // for sprite managing
health_colour = 1 // colour of health bar, 1 = green
soft_kill = false // when ai is not killed by the player, don't reward

// debug 
show_detect_distance = false
show_xy_meeting = false
show_main_variables = false
show_platform_variables = false

