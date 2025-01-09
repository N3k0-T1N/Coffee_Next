if (isWorking) {
    timer -= 1; // Уменьшаем таймер на 1 каждый шаг
    if (timer <= 0) { // Когда таймер достигает 0
        isWorking = false; // Останавливаем кофемашину
        timer = 0;         // Сбрасываем таймер
        //audio_play_sound(snd_StopCoffee, 1, false); // Звук выключения
		image_index = 0;
        show_debug_message("Кофемашина остановлена!"); // Сообщение для проверки
    }
}
