function collision_tables(obj){
	var obj_bottom = obj.y + sprite_height;  // Нижняя граница объекта
 
    // Проверка столкновения с полкой с молоком
    if (obj_bottom >= global.milk_shelf_y && obj_bottom < global.milk_shelf_y + 30
        && (obj.x >= global.milk_shelf_x1 && obj.x <= global.milk_shelf_x2
        || obj.x + sprite_width >= global.milk_shelf_x1 && obj.x + sprite_width <= global.milk_shelf_x2)) {
        obj.y = global.milk_shelf_y - sprite_height; // Ставим объект на полку
		break_obj(obj);
		put_sound(obj)
		on_ground = true;
        obj.vspeed = 0;                              // Обнуляем скорость
    } 
    // Проверка столкновения со столом
    else if (obj_bottom >= global.table_y && obj_bottom < global.table_y + 30) {
        obj.y = global.table_y - sprite_height;      // Ставим объект на стол
        break_obj(obj);
		put_sound(obj)
		on_ground = true;
        obj.vspeed = 0;                              // Обнуляем скорость
    }
    // Проверка столкновения с подставкой кофемашины
    else if (obj_bottom >= global.coffee_machine_table_y && obj_bottom < global.coffee_machine_table_y + 30
        && (obj.x >= global.coffe_machine_x1 + 30 && obj.x <= global.coffe_machine_x2 - 30
        || obj.x + sprite_width >= global.coffe_machine_x1 + 30 && obj.x + sprite_width <= global.coffe_machine_x2 - 30)) {
        obj.y = global.coffee_machine_table_y - sprite_height; // Ставим объект на кофемашину
		break_obj(obj);
		put_sound(obj)
		on_ground = true;
        obj.vspeed = 0;                                  // Обнуляем скорость
    }
}

function put_sound(obj) {
    // Проверяем условие для воспроизведения звука
	if (obj.vspeed != 0 && !audio_is_playing(obj.snd_put) && !obj.on_ground) {
        if (obj.isBreakable && !obj.isBroken) {
			audio_play_sound(obj.snd_put, 1, false);
		} else {
			audio_play_sound(obj.snd_put, 1, false);
        }
	}
}