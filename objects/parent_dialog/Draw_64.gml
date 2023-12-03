
var padding = 100
var padding_2 = padding * 2

draw_sprite_stretched(sprite_index, 0, padding, padding, WIDTH-padding_2, HEIGHT-padding_2)

scr_text_2()
draw_text(WIDTH/2, 140, title)

draw_sprite_stretched(spr_hud_line_verticle, 0, WIDTH/2, padding+80, 1, HEIGHT-padding_2-100)
