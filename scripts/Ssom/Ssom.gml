/// @param som
/// @desc Toca um efeito sonoro com o volume global configurado
function AudioPlaySFX(_som) {
    audio_play_sound(_som, 0, false);
    audio_sound_gain(_som, global.volume_sfx, 0);
}
