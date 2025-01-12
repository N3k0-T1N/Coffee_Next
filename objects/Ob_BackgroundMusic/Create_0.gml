// Проверяем, не существует ли уже объекта музыки
if (!instance_exists(Ob_BackgroundMusic)) {
    // Указываем, что этот объект не уничтожается при смене комнат

    audio_play_sound(MusicOnBackground, 1, true); // Проигрываем музыку (зацикливаем)

    audio_play_sound(MusicOnBackground, 2, true); // Проигрываем музыку (зацикливаем)

}
