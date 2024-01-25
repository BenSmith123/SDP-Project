
global.player_skin_id = irandom(PlayerSkinId.length-1)

with (obj_player)
{
	player_set_skin_sprites()
}

log_player_message($"Skin {global.player_skin_id}")