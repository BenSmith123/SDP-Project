
// maintain the image_xscale & yscale for the click collision
image_xscale = round(width / sprite_get_width(sprite_index))
image_yscale = round(height /  sprite_get_height(sprite_index))

draw_self()

scr_text_4()
draw_text(x, y, string_hash_to_newline(text))
