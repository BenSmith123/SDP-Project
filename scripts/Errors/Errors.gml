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

	// show error or log to discord!
	
	if global.game_crash_show_error
	{
		show_message(error.longMessage)
	}
	
	if global.game_crash_log_to_discord
	{
		var discord_message = error.longMessage + "\nStackTrace: \n"
		for (i = 0; i < array_length(stacktrace_array); i++)
		{
			discord_message += string(stacktrace_array[i]) + "\n"
		}

		// HTTP REQUEST
		post_to_discord(discord_message)
	}
	
    return 0
}
