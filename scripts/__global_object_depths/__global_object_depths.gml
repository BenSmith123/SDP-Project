function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -10100; // obj_controller
	global.__objectDepths[1] = 0; // obj_joystick
	global.__objectDepths[2] = -10000; // obj_hud
	global.__objectDepths[3] = 0; // parent_player
	global.__objectDepths[4] = -5000; // obj_player
	global.__objectDepths[5] = -5000; // obj_player_2
	global.__objectDepths[6] = -10000; // obj_player_dead
	global.__objectDepths[7] = 0; // obj_block_temp
	global.__objectDepths[8] = 0; // obj_block
	global.__objectDepths[9] = 0; // obj_block_blank
	global.__objectDepths[10] = -4000; // ai_parent
	global.__objectDepths[11] = -4000; // obj_ai_1
	global.__objectDepths[12] = -4000; // obj_ai_2
	global.__objectDepths[13] = -4000; // obj_ai_3
	global.__objectDepths[14] = -4000; // object55
	global.__objectDepths[15] = -4000; // object67
	global.__objectDepths[16] = -5000; // obj_ai_dead
	global.__objectDepths[17] = -5500; // obj_bullet_ai
	global.__objectDepths[18] = -5500; // obj_bullet_player
	global.__objectDepths[19] = -6000; // obj_damage_text
	global.__objectDepths[20] = -5500; // obj_heal_text
	global.__objectDepths[21] = 0; // obj_fx_double_jump
	global.__objectDepths[22] = 0; // object63
	global.__objectDepths[23] = -6000; // obj_levelup_fx
	global.__objectDepths[24] = -5500; // obj_coin
	global.__objectDepths[25] = -4900; // obj_levelup_fx_spark
	global.__objectDepths[26] = -5500; // obj_life_pickup
	global.__objectDepths[27] = -5500; // obj_speed_boost
	global.__objectDepths[28] = -5500; // obj_health_pickup
	global.__objectDepths[29] = -5800; // obj_fx_spark
	global.__objectDepths[30] = 0; // obj_fx_teleport
	global.__objectDepths[31] = 0; // obj_fx_speed
	global.__objectDepths[32] = 0; // obj_fx_lol
	global.__objectDepths[33] = 0; // obj_fx_spawn
	global.__objectDepths[34] = 0; // obj_fx_heart_fadeout
	global.__objectDepths[35] = 0; // obj_fx_pick_up
	global.__objectDepths[36] = 0; // obj_tips
	global.__objectDepths[37] = 0; // obj_guide
	global.__objectDepths[38] = -10000; // obj_pause_button
	global.__objectDepths[39] = -10000; // obj_pause_menu
	global.__objectDepths[40] = -9500; // obj_message_banner
	global.__objectDepths[41] = -10000; // arrow_key_parent
	global.__objectDepths[42] = -10000; // obj_arrow_key_left
	global.__objectDepths[43] = -10000; // obj_arrow_key_right
	global.__objectDepths[44] = -10000; // obj_arrow_key_jump
	global.__objectDepths[45] = -10000; // obj_arrow_key_attack
	global.__objectDepths[46] = 0; // object11
	global.__objectDepths[47] = 0; // obj_marker
	global.__objectDepths[48] = 0; // obj_bullet_fx
	global.__objectDepths[49] = 0; // object17
	global.__objectDepths[50] = 0; // object35
	global.__objectDepths[51] = 0; // ai_parent_BACKUP
	global.__objectDepths[52] = 0; // object36
	global.__objectDepths[53] = 0; // obj_player_stats
	global.__objectDepths[54] = 0; // object52
	global.__objectDepths[55] = 0; // obj_button_back
	global.__objectDepths[56] = 0; // obj_button_explore
	global.__objectDepths[57] = 0; // obj_button_arena
	global.__objectDepths[58] = 0; // obj_button_character
	global.__objectDepths[59] = 0; // obj_button_guide
	global.__objectDepths[60] = 0; // obj_button_settings
	global.__objectDepths[61] = 0; // obj_damage_test
	global.__objectDepths[62] = 0; // object53
	global.__objectDepths[63] = 0; // object60
	global.__objectDepths[64] = -2000; // obj_next_room
	global.__objectDepths[65] = -10000; // obj_pick_class
	global.__objectDepths[66] = -3400; // obj_seeker
	global.__objectDepths[67] = -10050; // obj_class_button
	global.__objectDepths[68] = 0; // obj_npc_shop
	global.__objectDepths[69] = 0; // obj_reset_game
	global.__objectDepths[70] = 0; // parent_npc
	global.__objectDepths[71] = 0; // obj_npc


	global.__objectNames[0] = "obj_controller";
	global.__objectNames[1] = "obj_joystick";
	global.__objectNames[2] = "obj_hud";
	global.__objectNames[3] = "parent_player";
	global.__objectNames[4] = "obj_player";
	global.__objectNames[5] = "obj_player_2";
	global.__objectNames[6] = "obj_player_dead";
	global.__objectNames[7] = "obj_block_temp";
	global.__objectNames[8] = "obj_block";
	global.__objectNames[9] = "obj_block_blank";
	global.__objectNames[10] = "ai_parent";
	global.__objectNames[11] = "obj_ai_1";
	global.__objectNames[12] = "obj_ai_2";
	global.__objectNames[13] = "obj_ai_3";
	global.__objectNames[14] = "object55";
	global.__objectNames[15] = "object67";
	global.__objectNames[16] = "obj_ai_dead";
	global.__objectNames[17] = "obj_bullet_ai";
	global.__objectNames[18] = "obj_bullet_player";
	global.__objectNames[19] = "obj_damage_text";
	global.__objectNames[20] = "obj_heal_text";
	global.__objectNames[21] = "obj_fx_double_jump";
	global.__objectNames[22] = "object63";
	global.__objectNames[23] = "obj_levelup_fx";
	global.__objectNames[24] = "obj_coin";
	global.__objectNames[25] = "obj_levelup_fx_spark";
	global.__objectNames[26] = "obj_life_pickup";
	global.__objectNames[27] = "obj_speed_boost";
	global.__objectNames[28] = "obj_health_pickup";
	global.__objectNames[29] = "obj_fx_spark";
	global.__objectNames[30] = "obj_fx_teleport";
	global.__objectNames[31] = "obj_fx_speed";
	global.__objectNames[32] = "obj_fx_lol";
	global.__objectNames[33] = "obj_fx_spawn";
	global.__objectNames[34] = "obj_fx_heart_fadeout";
	global.__objectNames[35] = "obj_fx_pick_up";
	global.__objectNames[36] = "obj_tips";
	global.__objectNames[37] = "obj_guide";
	global.__objectNames[38] = "obj_pause_button";
	global.__objectNames[39] = "obj_pause_menu";
	global.__objectNames[40] = "obj_message_banner";
	global.__objectNames[41] = "arrow_key_parent";
	global.__objectNames[42] = "obj_arrow_key_left";
	global.__objectNames[43] = "obj_arrow_key_right";
	global.__objectNames[44] = "obj_arrow_key_jump";
	global.__objectNames[45] = "obj_arrow_key_attack";
	global.__objectNames[46] = "object11";
	global.__objectNames[47] = "obj_marker";
	global.__objectNames[48] = "obj_bullet_fx";
	global.__objectNames[49] = "object17";
	global.__objectNames[50] = "object35";
	global.__objectNames[51] = "ai_parent_BACKUP";
	global.__objectNames[52] = "object36";
	global.__objectNames[53] = "obj_player_stats";
	global.__objectNames[54] = "object52";
	global.__objectNames[55] = "obj_button_back";
	global.__objectNames[56] = "obj_button_explore";
	global.__objectNames[57] = "obj_button_arena";
	global.__objectNames[58] = "obj_button_character";
	global.__objectNames[59] = "obj_button_guide";
	global.__objectNames[60] = "obj_button_settings";
	global.__objectNames[61] = "obj_damage_test";
	global.__objectNames[62] = "object53";
	global.__objectNames[63] = "object60";
	global.__objectNames[64] = "obj_next_room";
	global.__objectNames[65] = "obj_pick_class";
	global.__objectNames[66] = "obj_seeker";
	global.__objectNames[67] = "obj_class_button";
	global.__objectNames[68] = "obj_npc_shop";
	global.__objectNames[69] = "obj_reset_game";
	global.__objectNames[70] = "parent_npc";
	global.__objectNames[71] = "obj_npc";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
