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

// Смена кадров для молока и управление звуками
if (isFillCapuchino) {
    // Если наливаем молоко
    if (!audio_is_playing(Pour_Milk_Cup)) {
        audio_play_sound(Pour_Milk_Cup, 2, true); // Воспроизводим звук наливания
    }
    audio_stop_sound(Capuchinator); // Останавливаем звук капучинирования
    sprite_index = Sp_CupMilkCapuchined;
    image_index = 1; // Уровень молока
} else if (milk_capuchined >= max_capuchine_time) {
    // Если молоко полностью закапучинировано
    audio_stop_sound(Capuchinator);
    audio_stop_sound(Pour_Milk_Cup);
    sprite_index = Sp_CupMilkCapuchined;
    image_index = 0; // Уровень молока
} else if (milk_capuchined > 0 && isCapuching) {
    // Если идёт процесс капучинирования
    if (!audio_is_playing(Capuchinator)) {
        audio_play_sound(Capuchinator, 1, true); // Звук капучинирования
    }
    audio_stop_sound(Pour_Milk_Cup); // Останавливаем звук наливания
    sprite_index = Sp_CupMilkCapuchinAnimated;
} else if (milk_capuchined > 0 && !isCapuching) {
    // Если молоко есть, но процесс завершён
    audio_stop_sound(Capuchinator);
    audio_stop_sound(Pour_Milk_Cup);
    sprite_index = Sp_CupMilk;
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
} else {
    // Если молоко не заполнено
    audio_stop_sound(Capuchinator);
    audio_stop_sound(Pour_Milk_Cup);
    sprite_index = Sp_CupMilk;
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
}