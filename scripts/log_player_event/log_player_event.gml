/// @param {String}
function log_player_message(text)
{
	// TODO - use instance layers
	//instance_create_layer(0, 0, "", obj_hud_log_text);
	var obj = instance_create(0, 0, obj_hud_log_text);
	obj.text = text
}