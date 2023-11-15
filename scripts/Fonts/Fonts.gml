
function scr_text_1()
{
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font_arial_12)
}

function scr_text_2() 
{
	// for damage_text
	//draw_set_alpha(image_alpha)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font_level)
	//draw_set_font(font_damage)
}


function scr_text_3()
{
	// for hud right side (kills)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_right)
	draw_set_valign(fa_middle)
	draw_set_font(font_arial_12)
}

function scr_text_4() 
{
	// for hud right side (kills)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font_arial_11_bold)
}
