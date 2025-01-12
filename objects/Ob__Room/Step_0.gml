spawn_person();

// Находим все объекты под курсором
var clicked_obj = noone; // Переменная для объекта с минимальной глубиной
var min_depth = 1000000; // Очень большое число для начального сравнения

// Перебираем все объекты
with (all) {
    if (position_meeting(mouse_x, mouse_y, id)) {
        // Если объект под курсором и его глубина меньше текущего минимального
        if (depth < min_depth) {
            min_depth = depth; // Обновляем минимальную глубину
            clicked_obj = id;  // Сохраняем объект
        }
    }
}

// Обрабатываем объект с минимальной глубиной
if (clicked_obj != noone) {
    show_debug_message("Клик по объекту: " + string(object_get_name(clicked_obj.object_index)) + " с глубиной: " + string(clicked_obj.depth));
	global.clicked_object_depth = clicked_obj.depth
}