
dragData = 0
scrollY = 0
scrollTop = 0
scrollBottom = 0

// defaults

// draggable on-screen region
region_width = 300
region_height = 300

scrollable_height = 400 // total height of all items in the scrollable

var a = instance_create(x+150,y, obj_shop_item)
a.scrollable_controller = self

var b = instance_create(x+150,y+60, obj_shop_item)
b.scrollable_controller = self
