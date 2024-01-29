
event_inherited()

item_details = {}
cost = 0
disabled = false

var sell_button = instance_create(x+152, y, obj_shop_button_sell)
sell_button.attached_item_obj = id

// draw event to be ran on the parent (this way the parent controls the full scroll image_alpha)
draw_event = function()
{
	draw_sprite(item_details.sprite, 0, x-162, y+10)
	
	draw_set_font(font_arial_12_bold)
	draw_text(x-148, y+12, amount)
	draw_text(x-188, y-26, item_details.name)
}