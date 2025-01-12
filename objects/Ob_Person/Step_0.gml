time_expired(self);
person_to_position(self);
which_coffee(self)

if (isLeaving) {
	direction = point_direction(x, y, -10 - sprite_width, y);
	speed = 4; // Устанавливаем скорость движения
    x += lengthdir_x(speed, direction);

    // Уход за экран
    if (x < -1 - sprite_width) {
        instance_destroy(); // Удаляем персонажа
        update_queue(); // Обновляем очередь
    }
}
