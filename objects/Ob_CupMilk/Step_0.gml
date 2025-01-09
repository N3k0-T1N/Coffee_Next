if (dragging) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
} else {
	apply_gravity(self);    // Применяем гравитацию
}
