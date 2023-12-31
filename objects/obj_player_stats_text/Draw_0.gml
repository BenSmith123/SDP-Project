
scr_text_1()

draw_set_halign(fa_center)

	//Level "+string(global.level) +@"
	//Experience: "+string(global.experience) +string("/")+string(global.max_exp) +@"
	//HP: " +string(global.max_hp) +@"
	
var text = get_player_stats_text()

draw_text(x,y,text)
