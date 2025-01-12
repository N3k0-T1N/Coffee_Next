function change_music(){
switch (global.sound){
	case 1:
		audio_stop_sound(MusicHui);
		audio_stop_sound(MusicPicnic);
		if (!audio_is_playing(MusicOnBackground)) {
			audio_play_sound(MusicOnBackground, 2, true);
		}
		break;
	case 2:
		audio_stop_sound(MusicOnBackground);
		audio_stop_sound(MusicPicnic);
		if (!audio_is_playing(MusicHui)) {
			audio_play_sound(MusicHui, 2, true);
		}
		break;
	case 3:
		audio_stop_sound(MusicOnBackground);
		audio_stop_sound(MusicHui);
		if (!audio_is_playing(MusicPicnic)) {
			audio_play_sound(MusicPicnic, 2, true);
		}
		break;
	case 4:
		audio_stop_sound(MusicOnBackground);
		audio_stop_sound(MusicHui);
		audio_stop_sound(MusicPicnic);
		break;
	default:
		global.sound = 1;
		break;
}



}