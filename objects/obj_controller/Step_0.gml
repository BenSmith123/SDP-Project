///@description game controls & save on os_pause

// save game once tabbed out or closed on mobile
if os_is_paused() { save_game() }

global_game_controls()
