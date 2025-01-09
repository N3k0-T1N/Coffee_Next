if (dragging) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
  vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
  apply_gravity(self);    // Применяем гравитацию
  collision_tables(self); // Коллизии с возможными полками
  
  // Проверка, находится ли кружка в пакете с молоком
  var milk = instance_find(Ob_Milk, 0); // Найти первый экземпляр молока
  if (position_meeting(x + sprite_width, y, milk) // Если кружка находится на молоке
  && global.dragged_object == milk // Молоко в руке
  && !isMilkFilled) { // Кружка не заполнена
	isFilling = true; // Меняем состояние наполнения
	milk_filled += milk_fill_speed; // Кол-во наполнения
	
	if (milk_filled >= max_fill_time) {
		isFilling = false; // Наполнение завершено
		isMilkFilled = true; // Полностью заполнено
		milk_filled = max_fill_time;
	}
  } else {
	isFilling = false;
  }
}

// Смена кадров для молока
if (isFilling || isMilkFilled) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
}

sc_border(self);