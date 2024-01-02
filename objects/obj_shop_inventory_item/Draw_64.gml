
y = round(y)

image_index = disabled
image_alpha = (y - top_y)/80 + 1

if y > bottom_y { image_alpha = (bottom_y - y)/80 + 1 }

scr_text_3()
draw_set_alpha(image_alpha)

draw_sprite_stretched(sprite_index, image_index, x-width/2, y-height/2, width, height)


draw_sprite(item_details.sprite, 0, x-112, y+10)

draw_text(x-98, y+22, amount)

draw_text(x-138, y-18, item_details.name)

// draw_text(x+40, y, item_details.sell_value)

draw_set_alpha(1)
