if (!isWorking && global.dragged_object == noone) { // Если кофемашина не работает
    isWorking = true; // Включаем работу
    timer = room_speed * 6; // Устанавливаем таймер (5 секунд, room_speed — количество шагов в секунду)
    //audio_play_sound(snd_StartCoffee, 1, false); // Звук включения
	image_index = 1;
    show_debug_message("Кофемашина запущена!"); // Сообщение для проверки
}