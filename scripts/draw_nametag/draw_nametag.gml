/// @param {String} name
/// @param {Number} y_pos - relative y position
/// @param {Boolean} bold - default false
function draw_nametag(name, y_pos, bold = false)
{
	scr_text_1()
	if bold draw_set_font(font_arial_12_bold) else draw_set_font(font_arial_12)
	
	var width = round(string_width(name))
	
	draw_sprite_stretched(spr_name_label,0,x-width/2-4,y_pos,width+9,20)
	draw_text(x,y_pos+10,name)
}