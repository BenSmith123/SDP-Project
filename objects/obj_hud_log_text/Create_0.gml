
y_start_pos = HEIGHT - 120

text = "" // set by creation script

// trigger existing text to move up
with(obj_hud_log_text) {
	event_perform(ev_other, ev_user0)
}

start_fade = false
alarm[0] = 120