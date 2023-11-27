
scr_text_1()
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(x,y, get_game_controls_text())

if global.is_game_master
{
	draw_text(x+500,y, get_game_debug_controls_text())
}
