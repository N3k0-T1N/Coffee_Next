if (dragging) {
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
if (isFilling || isMilkFilled && milk_capuchined_fill == 0) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
}

isFalling = false;
isBroken = false;