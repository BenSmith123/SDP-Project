
x = 0
y = 0


draw_sprite(sprite_index,0,200,400)

draw_sprite(spr_player_stand,image_index,200,400)

draw_text(400,300,string_hash_to_newline(global.name +@"
Level "+string(global.level) +@"
Experience: "+string(global.experience) +string("/")+string(global.max_exp) +@"

HP: " +string(global.max_hp) +@"
Attack: "+string(global.attack) +@"
Damage: "+string(global.attack-global.accuracy) +" ~ "+string(global.attack+global.accuracy) +@"
Defence: "+string(global.defence))


)



