function apply_gravity(obj) {

    obj.vspeed += global.gravity;  // Увеличиваем вертикальную скорость под действием гравитации
    obj.y += obj.vspeed;           // Обновляем позицию объекта
}
