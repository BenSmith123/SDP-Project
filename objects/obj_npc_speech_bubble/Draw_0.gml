	
var text_width = string_width_ext(text, line_height, text_max_width)
var text_height = string_height_ext(text, line_height, text_max_width)
var center_x = round(text_width/2)

// speech bubble
draw_sprite_stretched(sprite_index, 0, x-center_x, y, text_width+padding+6, text_height + padding)
	
// text
scr_text_5()
draw_text_ext(x-center_x+6,y+6,text,line_height,text_max_width)
