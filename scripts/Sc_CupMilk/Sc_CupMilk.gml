function milk_filling(obj){
	var milk = instance_find(Ob_Milk, 0); // Найти первый экземпляр молока
	if (position_meeting(x + sprite_width + 10, y, milk) // Если кружка находится под молоком
	&& global.dragged_object == milk // Молоко в руке
	&& !obj.isMilkFilled) { // Кружка не заполнена
		obj.isFilling = true; // Меняем состояние наполнения
		milk.isFill = true; // Молоко наполняет
		obj.milk_filled += obj.milk_fill_speed; // Кол-во наполнения
	
		if (obj.milk_filled >= obj.max_fill_time) {
			obj.isFilling = false; // Наполнение завершено
			milk.isFill = false; // Молоко не наполняет
			obj.isMilkFilled = true; // Полностью заполнено
			obj.milk_filled = obj.max_fill_time; // Заменяем состояние молока на максимальное
		}
  } else {
		obj.isFilling = false;
		milk.isFill = false; // Молоко не наполняет
  }
}


function milk_capuching(obj) {
	var coffee_machine = instance_find(Ob_CoffeeMachine, 0); // Находим кофемашину
	if (position_meeting(obj.x + sprite_width/2, obj.y, coffee_machine) // Кружка на кофемашине
	&& obj.isMilkFilled // Чашка заполнена молоком полностью
	&& !obj.isCapuchined // Молоко незакапучено
	&& coffee_machine.isWorking) { // Кофемашина работает
		obj.isCapuching = true; // Молоко вспенивается
		obj.milk_capuchined += obj.capuchine_speed;
		obj.x = coffee_machine.x + 114;
		obj.y = global.coffee_machine_table_y - sprite_height;
		
		if (milk_capuchined >= obj.max_capuchine_time) {
			obj.isCapuching = false; // Молоко не вспенивается
			obj.isCapuchined = true; // Молоко вспенено
		}
	} else {
		obj.isCapuching = false; // Молоко не вспенивается
	}
}