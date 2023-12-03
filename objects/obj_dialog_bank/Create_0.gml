
event_inherited()

title = "Bank"

var center_x = WIDTH/2
var gap = 140


b = instance_create(center_x - gap, 280, obj_button_generic)
b.pressed_function = bank_deposit
// NOTE - button text set in step event to always be up-to-date

b2 = instance_create(center_x + gap, 280, obj_button_generic)
b2.pressed_function = bank_withdraw

