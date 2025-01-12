function coffee_filling(obj){
	var coffee_machine = instance_find(Ob_CoffeeMachine, 0); // Найти первый экземпляр кофемашины
	if (position_meeting(obj.x + sprite_width/2, obj.y, coffee_machine) // Кружка на кофемашине
	&& !obj.isCoffeeFilled                           // Кружка ещё не наполнена
	&& coffee_machine.isWorking) {              // Кофемашина работает
	    obj.isFillingCoffee = true;                       // Начинаем наполнение кофе
	    obj.coffee_filled += obj.fill_coffee_speed;            // Увеличиваем уровень заполнения
		obj.x = coffee_machine.x + 64;
		obj.y = global.coffee_machine_table_y - sprite_height;
		
	    if (obj.coffee_filled >= obj.max_fill_coffee_time) {   // Если кружка полностью наполнена
	        obj.isFillingCoffee = false;                  // Наполнение завершено
	        obj.isCoffeeFilled = true;              // Фиксируем, что кружка наполнена
	        obj.coffee_filled = obj.max_fill_coffee_time;      // Устанавливаем максимум
	    }
	}
}

function milk_capuchined_filling(obj) {
	var milk_cup = instance_find(Ob_CupMilk, 0) // Находим кружку молока
	if (position_meeting(x + sprite_width + 10, y, milk_cup) // Если кружка находится под кружкой с молоком
	&& global.dragged_object == milk_cup // И обьект в руке кружка молока
	&& obj.isCoffeeFilled // Кофе залито
	&& !obj.isMilkFilled
	&& milk_cup.isCapuchined) { // И кофе не залито молоком
		obj.isMilkFilling = true; // Кофе наполняется молоком
		milk_cup.isFillCapuchino = true; // Кружка молока наполняет кофе
		obj.milk_filled += fill_milk_speed; // Таймер для наполнения, насколько заполнился
		if (obj.milk_filled >= obj.max_fill_milk_time) { // Если заполнился
			obj.isMilkFilling = false; // Больше не наполняется молоком
			milk_cup.isFillCapuchino = false; // Не наполняет молоком
			milk_cup.isMilkFilled = false; // Молоком не заполнено
			milk_cup.isCapuchined = false; // Не закапученировано
			milk_cup.milk_filled = 0; // Стартовый уровень молока
			milk_cup.milk_capuchined = 0; // Стартовый уровень капучинирования
			obj.isMilkFilled = true; // Наполнено молоком
			obj.milk_filled = obj.max_fill_milk_time; // Навсякий случай сравниваем уровень молока к максимальному
		}
	} else {
		obj.isMilkFilling = false;
		milk_cup.isFillCapuchino = false;
	}
}


