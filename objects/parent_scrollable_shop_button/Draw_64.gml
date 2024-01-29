
if !instance_exists(attached_item_obj)
{ 
	instance_destroy()
	exit
}

image_alpha = attached_item_obj.image_alpha
y = attached_item_obj.y

image_xscale = round(width / sprite_get_width(sprite_index))
image_yscale = round(height /  sprite_get_height(sprite_index))

scr_text_4()
draw_set_font(font_arial_12_bold)

draw_set_alpha(image_alpha)

draw_self()

// text has to be a function call as its not set on create
if disabled { draw_set_color(c_silver) } 
draw_text(x, y, string_hash_to_newline(get_text()))

draw_set_alpha(1)
