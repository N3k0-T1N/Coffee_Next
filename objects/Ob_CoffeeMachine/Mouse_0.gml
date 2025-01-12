if (!isWorking 
&& global.dragged_object == noone
&& global.clicked_object_depth == depth) { // Если кофемашина не работает
    isWorking = true; // Включаем работу
    timer = room_speed * 5.5; // Устанавливаем таймер (5 секунд, room_speed — количество шагов в секунду)
    audio_play_sound(Coffee_Machine, 1, false); // Звук включения
	image_index = 1;
    show_debug_message("Кофемашина запущена!"); // Сообщение для проверки
}