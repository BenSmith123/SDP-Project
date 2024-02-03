///@description - HTTP POST request to discord
///@param {string} discord_message -
function post_to_discord(discord_message)
{
	if discord_message == "" { exit }
	
	// log all http requests - incase some are fired unintentionally
	console_log(discord_message)
	
	if global.show_debug { log_player_message($"Discord message sent") }
	
	var discord_webhook_url = "https://discord.com/api/webhooks/1202975924212203580/JKKXdrTcJm7wwSxhOKHKG2pwngGZ1BSzVyQ8ESTeArI4l7wMEkAqhr-B8--lBxcm_yA8"
	
	var os_name = get_os_name()
	var discord_bot_name = $"{os_name} v{global.game_version} #{global.game_build_id}\n"

	var request_body = 
	{
		username: discord_bot_name,
		content: discord_message
	}
	
	var header_map = ds_map_create()
	ds_map_add(header_map, "Content-Type", "application/json")
	
	// MAKE REQUEST!
	post_request = http_request(discord_webhook_url, "POST", header_map, json_stringify(request_body))
		
	//ds_map_destroy(header_map) - don't destroy the map - it will block the http request..
}

