
event_inherited()


scr_text_2()
draw_text(dialog_center_x-120, dialog_y_top+100, "Stat points: " +string(global.stat_points))

scr_text_4()
draw_set_halign(fa_left)
draw_text(dialog_x_left+80, dialog_y_top+240, get_player_stats_text())

