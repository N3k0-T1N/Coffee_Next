dragging = false; // Флаг состояния перетаскивания

isBreakable = false;

isFilling = false; // Флаг состояния наполняется ли стакан кофе или молоком
isMilkFilled = false; // Флаг заполнения кружки
max_fill_time = room_speed * 3; // 3 секунд для полного заполнения
milk_fill_speed = 1; // Скорость наполнения молоком
milk_filled = 0; // Кол-во налитого молока

isCapuching = false; // Капучинируется ли молоко
isCapuchined = false; // Флаг состояния использовался ли капучинатор
max_capuchine_time = room_speed * 5; // Время для капучинирования молока
capuchine_speed = 1; // Скорость капучинирования
milk_capuchined = 0; // Уровень капучинирования
milk_capuchined_fill = 0; // Сколько молока капучинированного осталось в чашке

offset_x = 0; // Смещение по X
offset_y = 0; // Смещение по Y
vspeed =0;

global.dragged_object = noone; // Глобальный объект, который перетаскивается
