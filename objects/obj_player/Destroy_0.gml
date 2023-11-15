
global.player_lives -= 1
// take away exp too

var dead_body = instance_create(x,y,obj_player_dead)
dead_body.friction = friction
dead_body.hspeed = hspeed
dead_body.vspeed = vspeed
dead_body.image_xscale = image_xscale


// destroy controller obj if its enabled
if global.joystick_enabled = true {with (obj_joystick) instance_destroy()}

with arrow_key_parent instance_destroy()
with obj_hud instance_destroy()
with obj_heal_text instance_destroy()


