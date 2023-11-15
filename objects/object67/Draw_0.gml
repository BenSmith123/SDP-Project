    /*********************************************************
    * This code handles all the graphics and graphic functions of the AI
    * This code is constantly run while the AI object exists
    * non-built in variables are set by the AI initialize code
    **********************************************************/
    
    scr_ai_debug() // turn on the debug information
    scr_text_1() // set the text style that was pre-defined 
    
    // DRAW THE NAME TAG
    // position based on the mask index (cause all AI different size)
    name_tag_x = x-string_width(string_hash_to_newline(name))/2 // x position of the name tag
    
    // function takes parameters (sprite, index, x, y, width, height)
    draw_sprite_stretched(spr_name_label, 0, name_tag_x, y+54, string_width(string_hash_to_newline(name)), 20) // label background (black)
    draw_text(x,y+54, string_hash_to_newline(name)) // draw the text (white)
    // drawn at AI y position +54 so its drawn below the AI ^^^
     
    // HEALTH BAR
    if show_hp = true // only show the health bar if the AI is near the player
    {
        scr_text_4() // set the text style (bold, white)
    
        draw_sprite_stretched_ext(spr_ai_health_bar,health_colour,x-20,y+36,hp/maxhp*40,1,c_white,1) // health bar
        // 20 = half the sprite width
        // 40 = healthbar width
        // 1 = healthbar height
        draw_text(x,y+tag_y+44,string_hash_to_newline(string(hp)))// + "/" + string(maxhp))
    }
    
    // SPRITE CHANGING (ORDER: last code overrides the rest)
    if stay = true {sprite_index = sprite_stand}
    if stay = false {sprite_index = sprite_walk}
    if place_free(x,y+1) // if not on the ground
    {sprite_index = sprite_jump} // jumping sprite
    if attacking = true {sprite_index = sprite_attack}
    
    // AI SPRITE
    // draw the sprite of the ai with all built in variables used by the ai functions 
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha) 
    
    // round the x and y position to avoid blurred graphics!
    // otherwise x and y can be placed between pixels, thus blurring the graphics
    x = round(x)
    y = round(y)
    