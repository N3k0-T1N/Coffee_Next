function apply_gravity(obj) {
    var obj_bottom = obj.y + sprite_height;  // Нижняя граница объекта

    obj.vspeed += global.gravity;  // Увеличиваем вертикальную скорость под действием гравитации
    obj.y += obj.vspeed;           // Обновляем позицию объекта

    // Проверка столкновения с "землей"
    if (obj_bottom >= global.ground_y) {
        obj.y = global.ground_y - sprite_height;  // Ставим объект на землю
        obj.vspeed = 0;                           // Обнуляем скорость
    } 
    // Проверка столкновения с полкой с молоком
    else if (obj_bottom >= global.milk_shelf_y && obj_bottom < global.milk_shelf_y + 30
        && (obj.x >= global.milk_shelf_x1 && obj.x <= global.milk_shelf_x2
		|| obj.x + sprite_width >= global.milk_shelf_x1 && obj.x + sprite_width <= global.milk_shelf_x2)) {
        obj.y = global.milk_shelf_y - sprite_height; // Ставим объект на полку
        obj.vspeed = 0;                              // Обнуляем скорость
    } 
    // Проверка столкновения со столом
    else if (obj_bottom >= global.table_y && obj_bottom < global.table_y + 30) {
        obj.y = global.table_y - sprite_height;      // Ставим объект на стол
        obj.vspeed = 0;                              // Обнуляем скорость
    }
}
