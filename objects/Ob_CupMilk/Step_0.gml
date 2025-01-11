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
	sprite_index = Sp_CupMilkCapuchined;
	image_index = 2;
} else if (milk_capuchined >= 1) {
	sprite_index = Sp_CupMilkCapuchined;
	image_index = floor(milk_capuchined / max_capuchine_time * (image_number - 2)); 
} else if (milk_capuchined == 0) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
	sprite_index = Sp_CupMilk
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
}