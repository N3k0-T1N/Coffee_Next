if (dragging && !isCapuching) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
  vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
  apply_gravity(self);    // Применяем гравитацию
  collision_tables(self); // Коллизии с возможными полками
  
  milk_filling(self); // Проверка, находится ли кружка в пакете с молоком
  milk_capuching(self); // Капучинирование молока
}

sc_border(self);

// Смена кадров для молока
if (isFillCapuchino) {
	audio_stop_sound(Capuchinator);
	if(!audio_is_playing(Pour_Milk)) {
		audio_play_sound(Pour_Milk, 1, false);
	}
    sprite_index = Sp_CupMilkCapuchined;
    image_index = 1; // Уровень молока
} else if (milk_capuchined >= max_capuchine_time) {
	audio_stop_sound(Capuchinator);
	audio_stop_sound(Pour_Milk);
	sprite_index = Sp_CupMilkCapuchined;
    image_index = 0; // Уровень молока
} else if (milk_capuchined > 0) {
    sprite_index = Sp_CupMilkCapuchinAnimated;
	if(!audio_is_playing(Capuchinator)) {
		audio_play_sound(Capuchinator, 1, false);
	}
	audio_stop_sound(Pour_Milk);
} else {
	audio_stop_sound(Capuchinator);
	audio_stop_sound(Pour_Milk);
    sprite_index = Sp_CupMilk;
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
}