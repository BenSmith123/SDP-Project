
global.experience = 0
global.coins = 0
global.mob_kills_current = 0

// reset map & player position
// prevent bug - if player is killed and game closed, player will 
// spawn where he died and most likely die again instantly 
global.current_map_name = global.respawn_map_name
global.current_player_x = -1

global.hp_last = global.max_hp // max hp for next spawn

var dead_body = instance_create(x,y,obj_player_dead)
dead_body.friction = friction
dead_body.hspeed = hspeed
dead_body.vspeed = vspeed
dead_body.image_xscale = image_xscale


// destroy controller obj if its enabled
if global.joystick_enabled { with (obj_joystick) instance_destroy() }

with arrow_key_parent instance_destroy()
with obj_hud instance_destroy()
with obj_heal_text instance_destroy()


