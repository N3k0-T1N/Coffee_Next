function break_obj(obj) {
	// Проверяем скорость перед сменой спрайта
	if (!obj.dragging) {
	    if (obj.vspeed > 5 && !obj.isBroken && obj.isFalling) { // Замените BREAK_SPEED_THRESHOLD на нужное значение скорости
			obj.isBroken = true;
	        obj.sprite_index = Sp_BrokenCup;     // Меняем спрайт на разбитую кружку
			obj.image_index = 0;
	        obj.vspeed = 0;                      // Останавливаем движение после разбивания
	    }
	}
	obj.isFalling = false;
}