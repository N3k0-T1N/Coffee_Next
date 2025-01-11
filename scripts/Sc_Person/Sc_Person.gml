function getted_coffee(obj){
	switch (obj.wanted_number_coffe) {
	case 0: // Обычный кофе
		obj.with_coffee = true;
		obj.with_milk = false; 
		break;
	case 1: // Капучино
		obj.with_coffee = true;
		obj.with_milk = true;
		break;
	}
}

function which_coffee_tooltip(obj) {
}

function got_coffee (obj) {

}

function not_got_coffee (obj) {

}

function time_expired(obj){
	obj.exit_timer += obj.exit_timer_speed;
	if (exit_timer >= exit_max_timer) {
		not_got_coffee(obj)
		obj.isLeaving = true;
	}
}

function person_to_position(obj) {
    if (!obj.isStanding) {
        // Движение по направлению к цели
        obj.x += lengthdir_x(obj.speed, obj.direction);
        obj.y += lengthdir_y(obj.speed, obj.direction);

        // Проверяем, достиг ли объект цели
        if (point_distance(obj.x, obj.y, obj.target_x, obj.target_y) <= obj.speed) {
            obj.x = obj.target_x;
            obj.y = obj.target_y;
            obj.speed = 0;
            obj.isStanding = true; // Устанавливаем флаг "Стоит в очереди"
        }
    }
}


function spawn_person() {
    // Если количество персонажей меньше максимального
    if (instance_number(Ob_Person) < global.max_persons) {
        if (global.person_time_respawn >= global.person_max_time_respawn) {
            // Создаём нового персонажа
            var new_person = instance_create_layer(1025, 208, "ui_layer", Ob_Person);

            // Устанавливаем его позицию в очереди
            var current_number = instance_number(Ob_Person) - 1; // Количество персонажей
            if (current_number < array_length(global.queue_positions)) { // Проверяем, не превышаем ли размер массива
                new_person.number_queue_person = current_number + 1;
                new_person.target_x = global.queue_positions[new_person.number_queue_person - 1];
                new_person.direction = point_direction(new_person.x, new_person.y, new_person.target_x, new_person.target_y);
                new_person.speed = 4; // Устанавливаем скорость движения
            } else {
                instance_destroy(new_person); // Уничтожаем персонажа, если он не может быть добавлен
            }

            global.person_time_respawn = 0; // Сбрасываем таймер спавна
        } else {
            global.person_time_respawn += global.person_time_speed_respawn; // Увеличиваем время ожидания
        }
    } else {
        global.person_time_respawn = 0; // Сбрасываем таймер, если персонажей достаточно
    }
}



function update_queue() {
    var persons_count = instance_number(Ob_Person); // Находим всех персонажей
    for (var i = 0; i < persons_count; i++) {
		var person = instance_find(Ob_Person, i);
        person.number_queue_person = i + 1; // Пересчитываем позицию в очереди
        person.target_x = global.queue_positions[i]; // Устанавливаем новую позицию
        person.direction = point_direction(person.x, person.y, person.target_x, person.target_y);
        person.isStanding = false; // Обновляем флаг движения
        person.speed = 4; // Возобновляем движение
    }
}

