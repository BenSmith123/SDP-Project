
event_inherited()

item_details = {}
amount = 0
disabled = false

top_y = 0 // fade out
bottom_y = 0

width = 300
height = 64

var sell_button = instance_create(x+102, y, obj_shop_button_sell_item)
sell_button.attached_item_obj = id
