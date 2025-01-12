function break_obj(obj) {
	// Проверяем скорость перед сменой спрайта
	if (!obj.dragging && obj.isBreakable) {
	    if (obj.vspeed > obj.break_speed && !obj.isBroken) { // Замените BREAK_SPEED_THRESHOLD на нужное значение скорости
			obj.isBroken = true; // Кружка сломана
			audio_play_sound(obj.snd_breake, 1, false);
			obj.image_index = 0;	// Меняем кадр на самуый первый
			obj.sprite_index = obj.obj_breake;  // Меняем спрайт на разбитую кружк
			audio_play_sound(Crash, 1, false);
	    }
	}
}