
x1 = obj_player.x
y1 = obj_player.y

x2 = obj_player_2.x
y2 = obj_player_2.y

padding = 200; vw = view_wport; vh = view_hport
vscale = max(1, abs(x2 - x1) / (vw - padding * 2), abs(y2 - y1) / (vh - padding * 2))


view_wview = vscale * vw
view_xview = (x1 + x2 - view_wview) / 2


view_hview = vscale * vh
view_yview = (y1 + y2 - view_hview) / 2




/*
//if (view_xview[0] < 0 and obj_player.x < WIDTH/1.5 and obj_player_2.x < WIDTH/1.5) {view_xview[0] = 0}
if (view_yview[0] < 0 and obj_player.y < HEIGHT/1.5 and obj_player_2.y < HEIGHT/1.5) {view_yview[0] = 0}
if (view_yview[0] > room_height and obj_player.y > room_height-(HEIGHT/2) and obj_player_2.y > room_height-(HEIGHT/2)){view_yview[0] = room_height-HEIGHT; global.name = "yo"}
//if (view_wview[0] > room_width) {view_wview = room_width}
//if (view_hview[0] > room_height) {view_hview = room_height}















/* origional script

/// view_dual(object1, object2, padding)
// var o1, o2, x1, x2, y1, y2, vw, vh, vb, vscale;
o1 = argument0; x1 = o1.x; y1 = o1.y
o2 = argument1; x2 = o2.x; y2 = o2.y
vb = argument2; vw = view_wport; vh = view_hport;
vscale = max(1, abs(x2 - x1) / (vw - vb * 2), abs(y2 - y1) / (vh - vb * 2))
view_wview = vscale * vw
view_hview = vscale * vh
view_xview = (x1 + x2 - view_wview) / 2
view_yview = (y1 + y2 - view_hview) / 2
