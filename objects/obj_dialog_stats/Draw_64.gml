
event_inherited()

scr_text_2()
draw_text(dialog_center_x-120, dialog_y_top+100, "Stat points: " +string(global.stat_points))

scr_text_4()
draw_set_halign(fa_left)

var attack_with_equip = global.attack * (1 + global.equip_damage_multiplier)
var equip_text = string(global.equip_damage_multiplier * 100) + "%"

var stats_text = @"
Damage: "+string(round((global.attack/2) + global.accuracy)) +" ~ "+string(attack_with_equip) +@"

Attack: "+string(attack_with_equip)+ $" ({equip_text} from equipped items)" +@"

Speed: "+string(global.walk_speed) +@"
Jump: "+string(global.jump) +@"

Heal time (sec): "+string(global.heal_time) +@"
Knockback: 20" +@"


Total mobs killed: "+string(global.mob_kills) +@"

Mobs killed since last death: "+string(global.mob_kills_current)
		
draw_text(dialog_x_left+80, dialog_y_top+240, stats_text)

