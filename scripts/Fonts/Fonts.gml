
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
	draw_set_font(font_arial_20_bold)
}


function scr_text_3()
{
	// HUD left side
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(font_arial_12_bold)
}

function scr_text_4() 
{
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font_arial_11_bold)
}

// NPC speech bubble text
function scr_text_5()
{
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(font_arial_12)
}