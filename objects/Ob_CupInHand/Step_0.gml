// Следим за позицией мышки
x = mouse_x;
y = mouse_y;

// Если мышка отпущена, уничтожаем объект
if (!mouse_check_button(mb_left)) {
    if (parent_box != noone) {
        parent_box.is_held = false; // Разрешаем коробке снова брать чашку
    }
    instance_destroy(); // Уничтожаем чашку в руке
}
