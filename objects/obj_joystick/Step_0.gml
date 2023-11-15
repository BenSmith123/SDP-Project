

/*** JOYSTICK BUTTONS ***

1 = A
2 = B
3 = X
4 = Y
5 = LB
6 = RB
7 = back (select)
8 = start
9 = joystick left pressed
10 = joystick right pressed

xpos (-1,1) = left joystick
rpos (-1,1) = right joystick


************************/


if joystick_exists(1)
{

    if joystick_xpos(1) < -0.2 {obj.move_left = true}
    if joystick_xpos(1) > 0.2 {obj.move_right = true}
    
    if joystick_check_button(1,1) {obj.move_jump = true}
    if joystick_check_button(1,2) {obj.move_attack = true; waiting_release = true}
    
    if joystick_check_button(1,4) {obj.move_temp = true}
    
    if joystick_check_button(1,8) {scr_pause_game()}
    
    
    
    //if joystick_check_button(1,5) {global.error = joystick_rpos(1)}
    
    // avoids buttons being held down (ONLY BUTTON PRESS EVENTS BELOW)
    if waiting_release = true
    {
        if not joystick_check_button(1,2) {waiting_release = false}
    }

}
else
{
    // display message saying joystick unplugged ?
}

/* */
/*  */
