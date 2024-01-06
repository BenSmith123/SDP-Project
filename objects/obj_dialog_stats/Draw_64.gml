
event_inherited()


scr_text_2()
draw_text(dialog_center_x-120, dialog_y_top+100, "Stat points: " +string(global.stat_points))

scr_text_4()
draw_set_halign(fa_left)

var stats_text = @"
Damage: "+string(round((global.attack/2) + global.accuracy)) +" ~ "+string(global.attack) +@"

Speed: "+string(global.walk_speed) +@"
Jump: "+string(global.jump) +@"

Heal time (sec): "+string(global.heal_time) +@"
Knockback: 20" +@"


Total mobs killed: "+string(global.mob_kills) +@"

Mobs killed since last death: "+string(global.mob_kills_current) +@"

"
		
draw_text(dialog_x_left+80, dialog_y_top+240, stats_text)
// draw_text(dialog_x_left+80, dialog_y_top+240, get_player_stats_text())

