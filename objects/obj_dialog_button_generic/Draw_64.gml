
var text_padding_px = 12

// force button width to grow if text is longer than the width
scr_text_2()

if !use_fixed_size
{
	width = max(width, string_width(text)+text_padding_px)
	height = max(height, string_height(text)+text_padding_px)
}

// maintain the image_xscale & yscale for the click collision
image_xscale = round(width / sprite_get_width(sprite_index))
image_yscale = round(height /  sprite_get_height(sprite_index))

if disabled { image_index = 1 }

draw_sprite_ext(sprite_index, image_index, gui_x, gui_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

draw_set_color(disabled ? c_silver : c_white)
draw_text(gui_x,gui_y, text)
