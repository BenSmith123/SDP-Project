
scr_text_1()

	//Level "+string(global.level) +@"
	//Experience: "+string(global.experience) +string("/")+string(global.max_exp) +@"
	//HP: " +string(global.max_hp) +@"
	
var text = global.name +@"
Attack: "+string(global.attack) +@"
Accuracy: "+string(global.accuracy) +@"
Damage: "+string(global.attack-global.accuracy) +" ~ "+string(global.attack+global.accuracy) +@"
Defence: "+string(global.defence)

draw_text(x,y,text)





