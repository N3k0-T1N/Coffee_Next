function coffee_filling(obj){
	var coffee_machine = instance_find(Ob_CoffeeMachine, 0); // Найти первый экземпляр кофемашины
	if (position_meeting(obj.x, obj.y, coffee_machine) // Кружка на кофемашине
	&& !obj.isCoffeeFilled                           // Кружка ещё не наполнена
	&& coffee_machine.isWorking) {              // Кофемашина работает
	    obj.isFillingCoffee = true;                       // Начинаем наполнение кофе
	    obj.coffee_filled += obj.fill_coffee_speed;            // Увеличиваем уровень заполнения

	    if (obj.coffee_filled >= obj.max_fill_coffee_time) {   // Если кружка полностью наполнена
	        obj.isFillingCoffee = false;                  // Наполнение завершено
	        obj.isCoffeeFilled = true;              // Фиксируем, что кружка наполнена
	        obj.coffee_filled = obj.max_fill_coffee_time;      // Устанавливаем максимум
	    }
	}
}