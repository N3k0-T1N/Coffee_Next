if (dragging) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
  vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
  apply_gravity(self);    // Применяем гравитацию
  collision_tables(self); // Коллизии с возможными полками
  
  // Проверка, находится ли кружка в пакете с молоком
  var milk = instance_find(Ob_Milk, 0); // Найти первый экземпляр молока
  if (position_meeting(x + sprite_width + 10, y, milk) // Если кружка находится под молоком
  && global.dragged_object == milk // Молоко в руке
  && !isMilkFilled) { // Кружка не заполнена
	isFilling = true; // Меняем состояние наполнения
	milk.isFill = true; // Молоко наполняет
	milk_filled += milk_fill_speed; // Кол-во наполнения
	
	if (milk_filled >= max_fill_time) {
		isFilling = false; // Наполнение завершено
		milk.isFill = false; // Молоко не наполняет
		isMilkFilled = true; // Полностью заполнено
		milk_filled = max_fill_time; // Заменяем состояние молока на максимальное
	}
  } else {
	isFilling = false;
	milk.isFill = false; // Молоко не наполняет
  }
}

// Смена кадров для молока
if (isFilling || isMilkFilled) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
    image_index = floor(milk_filled / max_fill_time * (image_number - 1));
}

sc_border(self);