
draw_self()

draw_nametag(name, 50, true)

if (!instance_exists(obj_player)) { exit }

var y_position_meeting = y > obj_player.y-20 && y < obj_player.y+20
var is_player_close = distance_to_object(obj_player) < chat_distance

if (y_position_meeting && is_player_close)
{
	// speech bubble
	draw_roundrect(x-text_bubble_width/2,y-140 ,x+text_bubble_width,y-70,false) 
	
	scr_text_1()
	draw_set_valign(fa_top)
	draw_set_color(c_black)
	
	// text
	draw_text_ext(x+20,y-120,text,30,160)
}

