
event_inherited()

// player
if instance_exists(obj_player)
{
	draw_sprite_ext(obj_player.sprite_stand, player_image_index, dialog_x_right-76, dialog_y_top+48, -1, 1, 0, c_white, 1)
}

// npc
if shop_npc_sprite != -1
draw_sprite_ext(shop_npc_sprite, image_index, dialog_x_left+76, dialog_y_top+48, -1, 1, 0, c_white, 1)

