if (dragging) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
	vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
	apply_gravity(self);    // Применяем гравитацию
	collision_tables(self); // Коллизии с возможными полками
}

sc_border(self)



if (isFill) {
	image_index = 1;
}
else {
	image_index = 0;
}