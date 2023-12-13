/// @param {String} name
/// @param {Real} y_pos - relative y position
/// @param {Bool} bold - default false
/// @param {Constant.Color} colour - default white
function draw_nametag(name, y_pos, bold = false, colour = c_white)
{
	scr_text_1()
	if bold draw_set_font(font_arial_12_bold) else draw_set_font(font_arial_12)
	draw_set_color(colour)
	
	var width = round(string_width(name))
	
	draw_sprite_stretched(spr_name_label,0,x-width/2-4,y_pos,width+9,20)
	draw_text(x,y_pos+10,name)
}