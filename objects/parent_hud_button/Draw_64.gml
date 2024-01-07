
image_xscale = round(width / sprite_get_width(sprite_index))
image_yscale = round(height /  sprite_get_height(sprite_index))

draw_self()
draw_sprite(icon_sprite, 0, x, y-6)

scr_text_1()
draw_text(x, y+14, label)
