
// if no player exists, fade out then respawn the player in starting position
if not instance_exists(obj_player) and not instance_exists(obj_player_2)
{

    image_alpha += 0.005
    
    if image_alpha >= 1 
    {
        instance_create(global.player_start_x,global.player_start_y,obj_player) // spawn player
        fade_in = true
        exit
    }
    
    alarm[0] = 1
}

