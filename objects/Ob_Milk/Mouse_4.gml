if (global.dragged_object == noone) { // Проверяем, свободен ли "механизм"
    global.dragged_object = id; // Устанавливаем текущий объект как перетаскиваемый
	layer = layer_get_id("held_layer");

	if (position_meeting(mouse_x, mouse_y, Ob_CupMilk)) {
		
	}

	dragging = true; // Включаем флаг перетаскивания
	offset_x = mouse_x - x; // Сохраняем смещение мыши по X
	offset_y = mouse_y - y; // Сохраняем смещение мыши по Y
}