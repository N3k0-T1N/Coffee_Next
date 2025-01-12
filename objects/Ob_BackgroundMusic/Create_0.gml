// Проверяем, не существует ли уже объекта музыки
if (!instance_exists(Ob_BackgroundMusic)) {
    // Указываем, что этот объект не уничтожается при смене комнат
    instance_create_layer(x, y, layer, Ob_BackgroundMusic);
    audio_play_sound(MusicOnBackground, 1, true); // Проигрываем музыку (зацикливаем)
}
