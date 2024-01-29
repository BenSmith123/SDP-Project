y = round(y)

image_index = disabled
image_alpha = (y - top_y)/80 + 1

if y > bottom_y { image_alpha = (bottom_y - y)/80 + 1 }

scr_text_6()
draw_set_alpha(image_alpha)

draw_sprite_stretched(sprite_index, image_index, x-width/2, y-height/2, width, height)

draw_event()

draw_set_alpha(1)
