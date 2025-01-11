global.gravity = 0.15;   // Сила гравитации (можно настроить)

global.table_y = 500;  // Стол

global.milk_shelf_y = 738; // Полка с молоком
global.milk_shelf_x1 = 480; // Полка с молоком
global.milk_shelf_x2 = 670; // Полка с молоком

global.first_person = true;
global.max_persons = 3; // Максимальное кол-во людей
global.person_max_time_respawn = room_speed * irandom_range(10, 40); // Диапазон респавна людей
global.person_time_respawn = 0; // Сколько времени сейчас
global.person_time_speed_respawn = 1; // Сколько времени сейчас
global.queue_positions = [400, 600, 800]; // Позиции для 3 персонажей

global.scores = 0; // Количество очков
global.scores_for_capuchino = 10; // Очков за капучино 
global.scores_for_coffee = 5; // Очков за кофе

global.hp = 6; // Кол-во хп
global.hp_damage = 1; // Сколько хп отнимается за ошибку
