if (dragging && !isFillingCoffee) {
    x = mouse_x - offset_x; // Обновляем позицию X
    y = mouse_y - offset_y; // Обновляем позицию Y
    vspeed = 0;             // Сбрасываем вертикальную скорость при перетаскивании
} else {
    apply_gravity(self);    // Применяем гравитацию
    collision_tables(self); // Коллизии с возможными полками
	
	if(!isBroken) { // Если кружка не сломана
		coffee_filling(self);     // Наполнение кружку кофем
	}
}

sc_border(self);

// Обновление спрайта кружки в зависимости от состояния
if (isFillingCoffee || isCoffeeFilled && milk_filled == 0) {
    // Рассчитываем кадр на основе уровня наполнения и количества кадров в текстуре
    image_index = floor(coffee_filled / max_fill_coffee_time * (image_number - 1));
}

else if (isCoffeeFilled && milk_filled > 0) {
    // Если кружка заполнена кофе и частично молоком, меняем спрайт на капучино
    sprite_index = Sp_Capuchino;
}