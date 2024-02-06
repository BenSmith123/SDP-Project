
// random sprite
// var sprite = irandom_range(0, PlayerSkinId.length-1)

if spr_skin_index = PlayerSkinId.length-1 
{ 
	spr_skin_index = 0
}
else
{
	spr_skin_index += 1	
}

sprite_index = asset_get_index($"spr_skin_{spr_skin_index}_swing")
