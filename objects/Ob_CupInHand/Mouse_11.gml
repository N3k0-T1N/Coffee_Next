if (global.dragged_object == id) { // Убедиться, что этот объект был "захвачен"
    layer = layer_get_id("cups_layer");
    dragging = false; // Отключаем флаг перетаскивания
    global.dragged_object = noone; // Освобождаем глобальный флаг
	
    // Проверяем, находится ли объект над "мусоркой"
    if (position_meeting(mouse_x, mouse_y, Ob_Trashcan)) {
        instance_destroy(); // Удаляем объект
    }	
}