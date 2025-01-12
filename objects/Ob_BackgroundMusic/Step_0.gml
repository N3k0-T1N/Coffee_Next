if (!audio_is_playing(MusicOnBackground)) {
    // Проверяем, проигрывается ли музыка, если нет, то запускаем снова
    audio_play_sound(MusicOnBackground, 2, true);
}
