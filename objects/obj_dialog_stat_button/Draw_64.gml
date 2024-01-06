
event_inherited()

// only minus buttons show labels
scr_text_4()
if label == "" { exit }
draw_text(x+96, y, $"{label} ({current_glob_value})")
