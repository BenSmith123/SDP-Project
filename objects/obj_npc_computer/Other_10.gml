
global.player_skin_id = irandom(PlayerSkinId.length-1)

with (obj_player)
{
	y = y-600
	player_set_skin_sprites()
}
