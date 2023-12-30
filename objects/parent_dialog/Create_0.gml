
title = "" // set by child

depth = ObjectDepth.HUD

instance_deactivate_object(obj_hud)
instance_deactivate_object(obj_pause_button)
instance_deactivate_object(obj_button_open_inventory)

dialog_width = 760
dialog_height = 440

dialog_width_half = dialog_width / 2

dialog_center_x = global.screen_w / 2
dialog_y_top = global.dialog_y_pos // y position from the TOP
dialog_x_left = dialog_center_x - dialog_width_half // left side x position
dialog_x_right = dialog_center_x + dialog_width_half // right x position


instance_create(dialog_x_right, dialog_y_top, obj_dialog_close_button)
