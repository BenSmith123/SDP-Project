///@description loads the encoded file, decodes it, saves it as a new temporary file then 
/// reads the decoded file to load a game then deletes the decoded file
function load_game() 
{
	
	var file_path_and_name_encoded = working_directory + global.file_save_encoded_name
	var file_path_and_name_decoded = working_directory + global.file_save_decoded_name
	
	if !file_exists(file_path_and_name_encoded) { exit } // if file doesnt exists, game starts from nothing

	////////// load encoded file //////////
	var file = file_text_open_read(file_path_and_name_encoded)
    
	var n = 1
	while not (file_text_eof(file)) // while hasnt reached end of file
	{
		read[n] = file_text_read_string(file) // read each line and store as string array 
		n += 1
		file_text_readln(file) // go to the next line in the file
	}
    
	file_text_close(file) // close file
    
	////////// decode the encoded file and save to a temporary file
	file = file_text_open_write(file_path_and_name_decoded)
    
	for(var i = 1; i < n; i++)
	{
		file_text_write_string(file,base64_decode(read[i]))
		file_text_writeln(file)
	}
    
	file_text_close(file)
    
	////////// read the decoded temp file (load game) then delete the file
    
	if file_exists(file_path_and_name_decoded)
	{
		ini_open(file_path_and_name_decoded)

		// LOAD ALL GLOBAL VARIABLES FROM FILE
		game_load_globals_from_ini()

		ini_close()
        
		file_delete(global.file_save_decoded_name)
    
	}

}
