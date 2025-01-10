// Координата стола (верхняя граница)
var table_y = 500; // Задайте координату Y верхней границы стола

// Если кружка перетаскивается
if (dragging && !isFillingCoffee) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
    vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
    apply_gravity(self);    // Применяем гравитацию
    collision_tables(self); // Проверяем границы комнаты
    coffee_filling(self);   // Проверка, находится ли кружка на кофемашине
}

sc_border(self);

// Обновление спрайта кружки в зависимости от состояния
if (isFillingCoffee || isCoffeeFilled && milk_filled == 0) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
    image_index = floor(coffee_filled / max_fill_coffee_time * (image_number - 1));
} else if (isCoffeeFilled && milk_filled > 0) {
    // Если кружка заполнена кофе и частично молоком, меняем спрайт на капучино
    sprite_index = Sp_Capuchino;
}

// Ограничение движения кружки в пределах экрана
sc_border(self);
