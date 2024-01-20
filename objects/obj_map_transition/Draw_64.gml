
if fade_out { image_alpha += fade_speed } else { image_alpha -= fade_speed }

// fade in, destroy self
if image_alpha <= 0 { instance_destroy() }

// fade out, next map
if image_alpha >= 1 { move_to_map(go_to_previous_map) }

// black screen
draw_sprite_stretched_ext(spr_black,0,0,0,global.screen_w,global.screen_h,c_black,image_alpha)
