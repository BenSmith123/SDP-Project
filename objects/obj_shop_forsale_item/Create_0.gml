
event_inherited()

item_details = {}
disabled = false

var buy_button = instance_create(x+142, y, obj_shop_button_buy)
buy_button.attached_item_obj = id

// draw event to be ran on the parent (this way the parent controls the full scroll image_alpha)
draw_event = function()
{
	draw_sprite(item_details.sprite, 0, x-162, y+18)

	draw_text(x-188, y-16, item_details.description)
	draw_set_font(font_arial_12_bold)
	draw_text(x-188, y-34, item_details.name) // title
}