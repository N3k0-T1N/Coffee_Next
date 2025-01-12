image_index = irandom_range(0, 21);

wanted_number_coffe = irandom_range(1, 2); // выбор рандомного кофе
number_queue_person = 0; // Какой человек в очереди

isLeaving = false; // Уходит ли человек

isStanding = false; // Дошел ли человек до своего места или нет
speed = -4;
depth = 99;
exit_max_timer = room_speed * 30; // 30 секунд на делание нужного кофе
exit_timer = 0;
exit_timer_speed = 1;

with_coffee = false; //Нужен ли кофе с кофе?
with_milk = false; // Нужен ли кофе с молоком
score_count = 0; // Сколько очков можно получить за кофе

isTooltiled = false;

target_x = 0;
target_y = 208;

isCoffeeGetted = false;