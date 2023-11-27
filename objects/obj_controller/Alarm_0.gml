///@description debug - skip menu

var room_index = asset_get_index(global.current_map_name)

if room_exists(room_index)
{room_goto(room_index)}
else
{room_goto(room_test)}
