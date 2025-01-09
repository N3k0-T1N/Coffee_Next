if (dragging && !isFilling) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
    vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
    apply_gravity(self);    // Применяем гравитацию
    collision_tables(self); // Коллизии с возможными полками

    // Проверка, находится ли кружка на кофемашине
    var coffee_machine = instance_find(Ob_CoffeeMachine, 0); // Найти первый экземпляр кофемашины
	if (position_meeting(x, y, Ob_CoffeeMachine) // Кружка на кофемашине
	&& !isCoffeeFilled                           // Кружка ещё не наполнена
	&& coffee_machine.isWorking) {              // Кофемашина работает
	    isFilling = true;                       // Начинаем наполнение кофе
	    coffee_filled += fill_speed;            // Увеличиваем уровень заполнения

	    if (coffee_filled >= max_fill_time) {   // Если кружка полностью наполнена
	        isFilling = false;                  // Наполнение завершено
	        isCoffeeFilled = true;              // Фиксируем, что кружка наполнена
	        coffee_filled = max_fill_time;      // Устанавливаем максимум
	    }
	}
}

sc_border(self);


// Обновление спрайта кружки в зависимости от состояния
if (isFilling || isCoffeeFilled) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
    image_index = floor(coffee_filled / max_fill_time * (image_number - 1));
}

if (isCoffeeFilled && !isMilkFilled && milk_filled > 0) {
    // Если кружка заполнена кофе и частично молоком, меняем спрайт на капучино
    sprite_index = Sp_Capuchino;
}
