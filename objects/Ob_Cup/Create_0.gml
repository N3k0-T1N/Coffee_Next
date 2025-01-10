dragging = false; // Флаг состояния перетаскивания

isBreakable = true; // Обьект ломается
isBroken = false; // Флаг того, сломан ли обьект
obj_breake = Sp_BrokenCup; // Спрайт сломаной кружки

isFillingCoffee = false; // Флаг состояния наполняется ли стакан кофе
isCoffeeFilled = false; // Флаг заполнения кружки кофе
max_fill_coffee_time = room_speed * 5; // 5 секунд для полного заполнения
fill_coffee_speed = 1; // Скорость заполнения кофе (чем больше значение, тем быстрее)
coffee_filled = 0; // Уровень наполнения кофе

isMilkFilled = false; // Флаг заполнения кружки молоком
milk_filled = 0; // Уровень наполнения молоком

offset_x = 0; // Смещение по X
offset_y = 0; // Смещение по Y
vspeed = 0;      // Вертикальная скорость

global.dragged_object = noone; // Глобальный объект, который перетаскивается