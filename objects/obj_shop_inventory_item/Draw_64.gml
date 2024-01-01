
image_alpha = (y - top_y)/80 + 1

if y > bottom_y { image_alpha = (bottom_y - y)/80 + 1 }

scr_text_3()
draw_set_alpha(image_alpha)

image_xscale = round(width / sprite_get_width(sprite_index))
image_yscale = round(height /  sprite_get_height(sprite_index))

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)


draw_sprite(item_details.sprite, 0, x-112, y+8)

draw_text(x-138, y-18, item_details.name)

draw_text(x+40, y, item_details.sell_value)

draw_set_alpha(1)
