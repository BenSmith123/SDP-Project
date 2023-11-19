/// @param {String} name
/// @param {Number} y_pos - relative y position
function draw_nametag(name, y_pos)
{
	scr_text_4()
	
	var width = round(string_width(name))
	
	draw_sprite_stretched(spr_name_label,0,x-width/2-10,y+y_pos,width+20,20)
	draw_text(x,y+y_pos+9,name)
}