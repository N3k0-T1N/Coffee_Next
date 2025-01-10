dragging = false; // Флаг состояния перетаскивания
isFilling = false; // Флаг состояния наполняется ли стакан кофе или молоком
isMilkFilled = false; // Флаг заполнения кружки
isCapuching = false; // Капучинируется ли молоко
isCapuchined = false; // Флаг состояния использовался ли капучинатор
offset_x = 0; // Смещение по X
offset_y = 0; // Смещение по Y
max_fill_time = room_speed * 3; // 3 секунд для полного заполнения
milk_fill_speed = 1; // Скорость наполнения молоком
milk_filled = 0; // Кол-во налитого молока
vspeed =0;

global.dragged_object = noone; // Глобальный объект, который перетаскивается
