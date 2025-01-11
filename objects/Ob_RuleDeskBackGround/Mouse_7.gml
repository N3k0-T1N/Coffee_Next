if (!instance_exists(Ob_RuleDesk)) {
    var new_desk = instance_create_layer(x, y, "ui_layer", Ob_RuleDesk);
    new_desk.depth = -10000; // Установите отрицательный depth, чтобы объект был поверх всех остальных
}
