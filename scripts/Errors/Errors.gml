function on_game_crash(error)
{
	save_game()
	
	// print error to console
    show_debug_message("--------------------------------------------------------------")
	show_debug_message(error.longMessage)
	//show_debug_message($"Line: {error.line}")
	//show_debug_message(error.script)
	//show_debug_message("ERROR: " + string(error.message))
	
	// iterate over stacktrace to put trace on new lines
	var stacktrace_array = error.stacktrace
	for (i = 0; i < array_length(stacktrace_array); i++)
	{
		show_debug_message(stacktrace_array[i])
	}
    show_debug_message("--------------------------------------------------------------")
	
	// save error to file details to file:
	game_crash_write_to_file(error)
	
	// NOTE - you cannot POST to discord on game crash - event is async/queued and will only sometimes work
	
	if global.game_crash_show_error
	{
		show_message(error.longMessage)
	}
	
    return 0
}

///@description - save the error as JSON to file
function game_crash_write_to_file(error)
{
	var file_name = global.game_crash_error_file
	
	// delete any existing error file
    if file_exists(file_name) { file_delete(file_name) }
	
    var file = file_text_open_write(file_name)
	var stacktrace_array = error.stacktrace
	
	var error_text = error.longMessage + "\nStackTrace: \n"
	for (i = 0; i < array_length(stacktrace_array); i++)
	{
		error_text += string(stacktrace_array[i]) + "\n"
	}
	
    file_text_write_string(file, error_text)
    file_text_close(file)
	
	show_debug_message($"Saved error in ${working_directory + global.game_crash_error_file}")
}


/// @description - called on game_start, check for an existing crash report file
// if crash report file exists (is same build as current game too), post contents to discord
function game_crash_report_to_discord()
{
	var file_name_with_path = working_directory + global.game_crash_error_file
	if !file_exists(file_name_with_path) { exit }
	
	var file = file_text_open_read(file_name_with_path)
	var file_content = ""
		
	var n = 1
	while !(file_text_eof(file))
	{
		file_content += file_text_read_string(file) + "\n" // read each line (add new line to var)
		n += 1
		file_text_readln(file) // go to the next line in the file
	}
	
	// send to discord!
	if global.game_crash_log_to_discord { post_to_discord(file_content) }

	file_delete(global.game_crash_error_file)
}