if (global.clicked_object_depth == depth) {
	var obj_back_music = instance_find(Ob_BackgroundMusic, 0)
	if (global.sound == 3) {
		sprite_index = Sp_Radio_Off;
	} else {
		sprite_index = Sp_Radio;
	}
	global.sound += 1;
	show_debug_message("Плюс к музыке: " + string(global.sound));
}