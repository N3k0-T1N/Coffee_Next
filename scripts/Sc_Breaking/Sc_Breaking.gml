function break_obj(obj) {
	// Проверяем скорость перед сменой спрайта
	if (!obj.dragging && obj.isBreakable) {
	    if (obj.vspeed > 5 && !obj.isBroken) { // Замените BREAK_SPEED_THRESHOLD на нужное значение скорости
			obj.isFalling = true;
			obj.isBroken = true;
			obj.image_index = 0
			obj.sprite_index = obj.obj_breake;     // Меняем спрайт на разбитую кружк
	        obj.vspeed = 0;                      // Останавливаем движение после разбивания
	    }
	}
}