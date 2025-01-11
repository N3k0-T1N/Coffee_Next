person_to_position(self);

if (isLeaving) {
    x += lengthdir_x(speed, direction);

    // Уход за экран
    if (x > room_width + 32) {
        instance_destroy(); // Удаляем персонажа
        update_queue(); // Обновляем очередь
    }
}
