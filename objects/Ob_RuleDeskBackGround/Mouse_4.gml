if (position_meeting(mouse_x, mouse_y, self)) {
    // Проверяем, находится ли под мышкой объект, кроме доски правил
    var other_object = instance_position(mouse_x, mouse_y, all); // Находим любой объект под мышкой
    if (other_object != noone && other_object != id) {
        // Если под мышкой есть объект, но это не доска правил
        exit; // Выходим из скрипта, не выполняя телепортацию
    }

    // Телепортация доски правил
    var desc = instance_find(Ob_RuleDesk, 0);
    desc.x = 25;
    desc.y = 25;
}