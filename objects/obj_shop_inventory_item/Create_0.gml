
event_inherited()

item_details = {}
cost = 0
disabled = false

var sell_button = instance_create(x+102, y, obj_shop_button_sell)
sell_button.attached_item_obj = id

// draw event to be ran on the parent (this way the parent controls the full scroll image_alpha)
draw_event = function()
{
	draw_sprite(item_details.sprite, 0, x-112, y+10)
	draw_text(x-98, y+22, amount)
	draw_text(x-138, y-18, item_details.name)
}