wanted_number_coffe = irandom_range(1, 2); // выбор рандомного кофе
number_queue_person = 0; // Какой человек в очереди

isLeaving = false; // Уходит ли человек

isStanding = false; // Дошел ли человек до своего места или нет
speed = -4;
exit_max_timer = room_speed * 40; // 40 секунд на делание молока
exit_timer = 0;
exit_timer_speed = 1;

with_coffee = false; //Нужен ли кофе с кофе?
with_milk = false; // Нужен ли кофе с молоком
getted_coffee(self); // Ставим нужный кофе

isTooltiled = false;

target_x = 0;
target_y = 208;

isCoffeeGetted = false;