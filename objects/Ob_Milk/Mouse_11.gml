if (global.dragged_object == id) { // Убедиться, что этот объект был "захвачен"
    layer = layer_get_id("cups_layer");
	depth = 97;
    dragging = false; // Отключаем флаг перетаскивания
	on_ground = false; // Не на твержой поверхности
    global.dragged_object = noone; // Освобождаем глобальный флаг
}