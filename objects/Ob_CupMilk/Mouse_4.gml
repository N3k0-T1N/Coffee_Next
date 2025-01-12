if (global.dragged_object == noone && global.clicked_object_depth == depth) { // Проверяем, свободен ли "механизм"
    global.dragged_object = id; // Устанавливаем текущий объект как перетаскиваемый
	layer = layer_get_id("held_layer");

	dragging = true; // Включаем флаг перетаскивания
	offset_x = mouse_x - x; // Сохраняем смещение мыши по X
	offset_y = mouse_y - y; // Сохраняем смещение мыши по Y
}