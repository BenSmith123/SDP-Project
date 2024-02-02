
/// @returns {string} unix timestamp of compile build time
function get_game_build_timestamp()
{
	return string(floor(date_second_span(25569, GM_build_date)))
}

/// @returns {string} last 4 digits of the unix timestamp build time
/// NOTE - number is unique enough but doesn't reflect a older/newer version of the game
function get_game_build_id()
{
	var build_time_str = get_game_build_timestamp()
	var str_length = string_length(build_time_str)
	return string_copy(build_time_str, str_length-3, str_length)
}


function get_os_name()
{
	if os_type == os_windows return "Desktop (Windows)"
	if os_type == os_android return "Android"
	if os_type == os_ios return "iOS"
	if os_type == os_macosx return "Desktop (Mac)"

	return "Unknown OS"
}