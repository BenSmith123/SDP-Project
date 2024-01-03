
title = "Bank"
dialog_width = 320
dialog_height = 360
dialog_y_top = global.screen_h / 4

event_inherited()

b = instance_create(dialog_center_x, dialog_y_top+120, obj_dialog_button_generic)
b.pressed_function = bank_deposit
// NOTE - button text set in step event to always be up-to-date

b2 = instance_create(dialog_center_x, dialog_y_top+220, obj_dialog_button_generic)
b2.pressed_function = bank_withdraw

