if (global.dragged_object == id) { // Убедиться, что этот объект был "захвачен"
    layer = layer_get_id("cups_layer");
    dragging = false; // Отключаем флаг перетаскивания
	on_ground = false;
	depth = 97;
    global.dragged_object = noone; // Освобождаем глобальный флаг
}