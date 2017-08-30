
if position_meeting(mouse_x,mouse_y,self)
{
    if mouse_check_button_pressed(mb_left)
    {image_index = 1}
    
    if mouse_check_button_released(mb_left)
    {  
        image_index = 0
        event_user(0)
    }
}
