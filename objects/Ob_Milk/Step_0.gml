if (dragging) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
	vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
	apply_gravity(self);    // Применяем гравитацию
	collision_tables(self); // Коллизии с возможными полками
}

sc_border(self)



if (isFill) {
	if(!audio_is_playing(Pour_Milk)) {
		audio_play_sound(Pour_Milk, 1, false);
	}
	image_index = 1;
}
else {
	audio_stop_sound(Pour_Milk);
	image_index = 0;
}