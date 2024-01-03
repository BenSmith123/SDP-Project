
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

draw_text(x, y, string_hash_to_newline($"Sell#(${number_format_commas(attached_item_obj.item_details.sell_value)})"))

draw_set_alpha(1)
