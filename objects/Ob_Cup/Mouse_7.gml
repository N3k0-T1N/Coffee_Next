if (global.dragged_object == id) { // Убедиться, что этот объект был "захвачен"
    layer = layer_get_id("cups_layer");
	depth = 97;
    dragging = false; // Отключаем флаг перетаскивания
	on_ground = false;
    global.dragged_object = noone; // Освобождаем глобальный флаг
	
    // Проверяем, находится ли объект над "мусоркой"
    if (position_meeting(mouse_x, mouse_y, Ob_Trashcan)) {
		audio_play_sound(Close_Trashcan, 1, false)
        instance_destroy(); // Удаляем объект
    } else if (position_meeting(mouse_x, mouse_y, Ob_Person)
	&& !isBroken) { // Кружка не сломана
		var person = instance_nearest(mouse_x, mouse_y, Ob_Person) // Если находится человек
		if (person.number_queue_person == 1 // Если первый человек в очереди
		&& person.with_coffee == isCoffeeFilled
		&& person.with_milk == isMilkFilled
		&& person.isStanding)  {
			got_coffee(person)
			person.isLeaving = true;
			instance_destroy(); // Удаляем объект
		}
	}
}