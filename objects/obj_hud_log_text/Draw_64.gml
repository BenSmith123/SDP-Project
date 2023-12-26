
scr_text_1()
draw_set_halign(fa_right)

var display_text = repeat_count > 1
	? $"{text} (x{repeat_count})"
	: text

draw_text_color(WIDTH - 12, y_start_pos, display_text, c_white, c_white, c_white, c_white, image_alpha)
