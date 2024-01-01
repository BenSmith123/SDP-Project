if global.coins != displayed_coins && add_coins_timer_set == false
{
	alarm[0] = 1
	add_coins_timer_set = true
}



var coin_text = $"${round(displayed_coins)}"
var coin_spr_width = string_width(coin_text) + 19
draw_sprite_stretched(spr_coin_hud,0,x+66,72, coin_spr_width, 28)
draw_text_colour(75,87, coin_text, c_yellow, c_yellow, #f5d442, #f5d442, image_alpha)