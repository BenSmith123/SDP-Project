
depth = ObjectDepth.Player
player_set_start_position()

// store room for when game is next loaded
global.current_map_name = room_get_name(room)

//if global.system == SystemType.Mobile {
instance_create(WIDTH * 0.8, 32, obj_button_open_inventory)
instance_create(WIDTH * 0.7, 32, obj_button_open_stats)
instance_create(WIDTH * 0.6, 32, obj_button_open_debug)

if global.joystick_enabled { instance_create(x,y,obj_joystick) }

state = "-" // temporary (testing)
collision_distance = 5 // for when player is about to hit a block

hp = global.hp_last

update_player_stats() // set all stats

// IN-GAME

_image_speed = 0.2 // default image_speed to revert back to
image_speed = _image_speed
can_attack = true
attacking = false
move_direction = "" // for when key or arrow is pressed
can_be_hit = true // when the player can be hit again after taking damage
can_be_hit_time = 60 // time in steps (1sec)
start_speed = global.walk_speed
has_teleport_skill = global.class == "Spellcaster"
has_second_jump_skill = (global.is_game_master || global.class == "Ninja") && !has_teleport_skill
can_teleport_to_point = false // when a block is above and close
block_to_teleport_to = 0
second_jump = false // see if its the players second jump
melee_attack_range = 100
disable_block_collision = false // used for jumping down through SLOPE blocks
is_on_ladder = false
create_second_jump_fx = false
second_jump_fx_count = 20


head_x = 0 // the x position for the head (to match all player sprites)

// movement variables
move_left = false
move_right = false
move_jump = false
move_jump_down = false
move_attack = false
move_temp = false // debug

// set function to be accessed by other objects etc.
set_skin_sprites = player_set_skin_sprites
set_skin_sprites()
player_set_class_attributes()

set_weapon_sprites = function()
{
	var equip = get_item(global.equip_item_id_primary)
	
	// TODO - remove this once throwing stars have an attacking sprite
	if equip.class == "Ninja" { sprite_projectile = equip.sprite }
		
	if struct_exists(equip, "sprite_carrying") { sprite_carrying = equip.sprite_carrying }
		
	sprite_weapon_attack = equip.sprite_attacking
	attack = global.attack * (1 + global.equip_damage_multiplier)
}

animated_attack = sprite_get_number(sprite_attack) > 1

collision_tilemap = layer_tilemap_get_id("CollisionTiles")

// friction value applied to the character's horizontal movement every frame
// the friction is reduced when the character is in mid-air
friction_power = 0.5 // NOTE - changing to 1 might cause a bug where player sometimes faces other way after moving

grav_speed = 1 // applied every frame

vel_x = 0
vel_y = 0

grounded = false

instance_create(x,y,obj_hud)


draw_item_on_back = function()
{
	if sprite_carrying == undefined || sprite_index == sprite_attack { exit }
	draw_sprite_ext(sprite_carrying, 0, x, y+8, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}

// check if the player should be healing
check_for_heal = function()
{
	if hp > max_hp { hp = max_hp }
	else { alarm[3] = heal_time * room_speed }
}


teleport = function()
{
	if !can_teleport_to_point { exit }
	
	if !instance_exists(block_to_teleport_to) { exit }
	
	vel_y = -3
	y = block_to_teleport_to.y-60
	instance_create(x,y,obj_fx_teleport)
	part_particles_create(global.fx,x,y,global.spark_fx_blue,20)
	part_particles_create(global.fx,x,y,global.fx_flare,1)
}

check_for_heal()