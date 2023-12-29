

global.screen_w = 200
global.screen_h = 200

initialise_display()

var system = global.system == SystemType.Desktop ? "Desktop" : "Mobile"

var text = $"System: {system}#"
text += $"Android: {os_type == os_android}#"
text += $"Resolution: {window_get_width()}x{window_get_height()}#"
text += $"Resolution: {display_get_width()}x{display_get_height()}#"
text += $"Display width: {window_get_width_os()}#"
text += $"Display height: {window_get_height_os()}#"

show_message_async(string_hash_to_newline(text))
