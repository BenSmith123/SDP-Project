
// black overlay
draw_sprite_stretched_ext(spr_black,0,0,0,global.screen_w,global.screen_h,c_black,0.4)

// background
draw_sprite_stretched(sprite_index, 0, dialog_x_left, dialog_y_top, dialog_width, dialog_height)

// title
scr_text_2()
draw_text(dialog_center_x, dialog_y_top+40, title)
