
scr_text_1()

draw_set_halign(fa_center)

	//Level "+string(global.level) +@"
	//Experience: "+string(global.experience) +string("/")+string(global.max_exp) +@"
	//HP: " +string(global.max_hp) +@"
	
var text = global.name +@"
Attack: "+string(global.attack) +@"
Accuracy: "+string(global.accuracy) +@"
Damage: "+string(round((global.attack/2) + global.accuracy)) +" ~ "+string(global.attack) +@"
Defence: "+string(global.defence) +@"

Heal amount: "+string(global.heal_amount) +@"
Heal time (sec): "+string(global.heal_time)


draw_text(x,y,text)
