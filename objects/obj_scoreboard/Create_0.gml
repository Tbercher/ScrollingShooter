points = 0;

// Start looping background music if it is not already playing
if (!audio_is_playing(snd_music)) {
    audio_play_sound(snd_music, 1, true);
}