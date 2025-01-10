if (dragging) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
    vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
	sc_border(self)
} else {
	apply_gravity(self);    // Применяем гравитацию
	collision_tables(self); // Коллизии с возможными полками
}
