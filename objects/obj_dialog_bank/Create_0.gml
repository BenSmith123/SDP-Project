
event_inherited()

title = "Bank"

b = instance_create(dialog_center_x, dialog_y_top+180, obj_dialog_button_generic)
b.pressed_function = bank_deposit
// NOTE - button text set in step event to always be up-to-date

b2 = instance_create(dialog_center_x, dialog_y_top+280, obj_dialog_button_generic)
b2.pressed_function = bank_withdraw

