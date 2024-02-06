
for(var i = 0; i < image_number; i++)
{
	var spr_x = x + (i * 80)
	
	// swing sprite
	draw_sprite(sprite_index, i, spr_x, y)
	
	// weapon
	draw_sprite(spr_swing_sword_basic, i, spr_x, y)
}

draw_text(x, y+60, "Swap skin <E>")