wanted_number_coffe = irandom(1); // выбор рандомного кофе
number_queue_person = 0; // Какой человек в очереди

isLeaving = false; // Уходит ли человек

isStanding = false; // Дошел ли человек до своего места или нет
speed = -4;
exit_max_timer = room_speed * irandom_range(20, 30); // Диапазон секунд
exit_timer = 0;

with_coffee = false; //Нужен ли кофе с кофе?
with_milk = false; // Нужен ли кофе с молоком
getted_coffee(self); // Ставим нужный кофе

target_x = 0;
target_y = 208;

isCoffeeGetted = false;