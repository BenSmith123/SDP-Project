/// @description  debug game controls
if global.user = "GM"
{
    //if global.system = "Windows"
    {
    
        if instance_exists(obj_player)
        {
            if keyboard_check_pressed(ord("Q")) 
            {
                global.experience = global.max_exp
                scr_level_up()
                //obj_player.hp = obj_player.max_hp
            }
            
        
            if global.system = "Windows"
            {
                if mouse_check_button_released(mb_right) 
                {
                    choice = choose(obj_ai_1,obj_ai_3)
                    
                    instance_create(mouse_x,mouse_y,choice)
                }
            }
            
        
            if keyboard_check_pressed(ord("G")) {global.show_debug = !global.show_debug}
            
            if keyboard_check_pressed(ord("V")){global.overall_view = !global.overall_view; room_restart()}
        
        }
        
        if global.system = "Android"
        {
            if keyboard_check_pressed(vk_backspace)
            {
                room_restart()
            }
        }
    
    
    //if keyboard_check_pressed(ord('U')) {scr_save_game()}
    //if keyboard_check_pressed(ord('I')) {scr_load_game()}
    //if keyboard_check_pressed(ord('O')) {scr_reset_game()}
    
    if keyboard_check_pressed(ord("L")) {obj_player.x = mouse_x; obj_player.y = mouse_y}
    
    if keyboard_check_pressed(vk_f1) {show_message(get_game_controls_text())}
    
    if keyboard_check_pressed(vk_f11) {if room_exists(room_next(room)) room_goto_next()}

    if keyboard_check_pressed(vk_f12) {game_restart()}
    
    if keyboard_check_pressed(vk_escape) {game_end()}
    
    }
}



// instance_deactivate_region(view_xview[0],view_yview[0],WIDTH,HEIGHT,false,true)



