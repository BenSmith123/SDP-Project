
// loads the encoded file, decodes it, saves it as a new temporary file then 
// reads the decoded file to load a game then deletes the decoded file


////////// load encoded file //////////
if file_exists(working_directory+"temp") // if file doesnt exists, game starts from nothing
{
    file = file_text_open_read(working_directory+"temp")
    
    n = 1
    while not (file_text_eof(file)) // while hasnt reached end of file
    {
        read[n] = file_text_read_string(file) // read each line and store as string array 
        n += 1
        file_text_readln(file) // go to the next line in the file
    }
    
    file_text_close(file) // close file
    

    
////////// decode the encoded file and save to a temporary file //////////
    file = file_text_open_write(working_directory+"temp_2")
    
    for(i = 1; i < n; i++)
    {
        file_text_write_string(file,base64_decode(read[i]))
        file_text_writeln(file)
    }
    
    file_text_close(file)
    
    
    
////////// read the decoded temp file (load game) then delete the file //////////
    
    if file_exists(working_directory + "temp_2")
    {
        ini_open(working_directory + "temp_2")
        
        global.current_kills = ini_read_real("STATS","current_kills",true)
        global.show_time = ini_read_real("STATS","kills",true)
        
        global.class = ini_read_string("PLAYER","class","Beginner")
        global.name = ini_read_string("PLAYER","name","unknown")
        
        global.level = ini_read_real("PLAYER","level",1)
        global.experience = ini_read_real("PLAYER","experience",0)
        global.max_exp = ini_read_real("PLAYER","max_exp",10)
        global.player_lives = ini_read_real("PLAYER","player_lives",1)
        global.max_hp = ini_read_real("PLAYER","max_hp",50) 
        
        global.attack = ini_read_real("PLAYER","attack",0)
        global.defence = ini_read_real("PLAYER","defence",0) 
        global.accuracy = ini_read_real("PLAYER","accuracy",0) 
        global.jump = ini_read_real("PLAYER","jump",6) 
        global.walk_speed = ini_read_real("PLAYER","walk_speed",5) 
        global.heal_time = ini_read_real("PLAYER","heal_time",0)
        global.heal_amount = ini_read_real("PLAYER","heal_amount",0) 
        
        global.coins = ini_read_real("PLAYER","coins",0) 
        ini_close()
        
        file_delete("temp_2")
    
    }


}








