if global.coins != displayed_coins && add_coins_timer_set == false
{
	alarm[0] = 1
	add_coins_timer_set = true
}

scr_text_2()
var coin_text = $"${number_format_commas(round(displayed_coins))}"
var coin_spr_width = string_width(coin_text) + 19
var coin_spr_height = string_height(coin_text) + 12

var spr_center_x = x-round(coin_spr_width/2)
var spr_center_y = y-round(coin_spr_height/2)

draw_sprite_stretched(sprite_index,0,spr_center_x,spr_center_y, coin_spr_width, coin_spr_height)
draw_text_colour(x,y, coin_text, c_yellow, c_yellow, #f5d442, #f5d442, image_alpha)
