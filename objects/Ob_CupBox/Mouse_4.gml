if (!is_held) {
    // Создаем объект Ob_CupInHand на позиции мышки
    var new_cup = instance_create_layer(mouse_x, mouse_y, layer, Ob_CupInHand);
    // Указываем, что чашка захвачена
    new_cup.parent_box = id; // Связываем объект чашки с этой коробкой
    is_held = true;
}
