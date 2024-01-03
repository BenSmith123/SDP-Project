
title = "" // set by child

depth = ObjectDepth.HUD

instance_deactivate_object(obj_hud)
instance_deactivate_object(obj_pause_button)
instance_deactivate_object(parent_hud_button)
instance_deactivate_object(obj_arrow_key_attack)
instance_deactivate_object(obj_arrow_key_jump)
instance_deactivate_object(obj_arrow_key_jump_down)


// children components set this BEFORE the positions are set below
// use this to avoid overridding them
if !variable_instance_exists(id, "dialog_width") { dialog_width = 760 }
if !variable_instance_exists(id, "dialog_height") { dialog_height = 440 }
if !variable_instance_exists(id, "dialog_y_top") { dialog_y_top =  global.dialog_y_pos } // y position from the TOP

dialog_width_half = dialog_width / 2
var dialog_width_quarter = dialog_width / 4


dialog_center_x = global.screen_w / 2

dialog_x_left = dialog_center_x - dialog_width_half // left side x position
dialog_x_right = dialog_center_x + dialog_width_half // right x position
dialog_x_center_left = dialog_center_x - dialog_width_quarter
dialog_x_center_right = dialog_center_x + dialog_width_quarter


instance_create(dialog_x_right, dialog_y_top, obj_dialog_close_button)
