function sc_border(obj) {
    var obj_bottom = obj.y + sprite_height;
    var obj_right = obj.x + sprite_width;
	if(obj.dragging) {
		obj.vspeed = 0;
	}
    // Ограничение верхней границы
    if (obj.y <= 1) {
        obj.y = 1;
    }

    // Ограничение левой границы
    if (obj.x <= 1) {
        obj.x = 1;
    }

    // Ограничение нижней границы
    if (obj_bottom >= room_height - 1) {
        obj.y = room_height - 1 - sprite_height;
		break_obj(obj);
		obj.vspeed = 0; // Обнуляем скорость
    }

    // Ограничение правой границы
    if (obj_right >= room_width - 1) {
        obj.x = room_width - 1 - sprite_width;
    }
}