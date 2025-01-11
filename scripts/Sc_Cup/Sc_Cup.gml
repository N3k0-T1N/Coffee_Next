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

//function milk_capuchined_filling(obj) {
//    // Находим кружку кофе, с которой взаимодействует кружка молока
//    var milk_cup = instance_place(obj.x + obj.sprite_width + 10, obj.y, Ob_CupMilk);

//    if (milk_cup != noone) { // Если кружка молока найдена
//        // Проверяем, можно ли наливать молоко
//        if (global.dragged_object == milk_cup 
//        && obj.isCoffeeFilled 
//        && !obj.isMilkFilled 
//        && milk_cup.isCapuchined) {
//            show_debug_message("Условие наливания молока выполнено");
//            obj.isMilkFilling = true; // Начинаем наливать молоко
//            milk_cup.isFillCapuchino = true; // Кружка молока наливает
//            obj.milk_filled += obj.fill_milk_speed; // Увеличиваем уровень молока

//            // Если кружка полностью наполнена
//            if (obj.milk_filled >= obj.max_fill_milk_time) {
//                show_debug_message("Молоко полностью налито");
//                obj.isMilkFilling = false;
//                obj.isMilkFilled = true;
//                obj.milk_filled = obj.max_fill_milk_time;

//                // Сбрасываем состояние кружки молока
//                milk_cup.isFillCapuchino = false;
//                milk_cup.isMilkFilled = false;
//                milk_cup.isCapuchined = false;
//                milk_cup.milk_filled = 0;
//                milk_cup.milk_capuchined = 0;
//            }
//        } else {
//            // Сбрасываем состояние кружки молока, если условия не выполнены
//            obj.isMilkFilling = false;
//            milk_cup.isFillCapuchino = false;
//        }
//    } else {
//        // Если кружка молока не взаимодействует ни с чем
//        obj.isMilkFilling = false;
//    }
//}


