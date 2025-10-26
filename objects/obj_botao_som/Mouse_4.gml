
if (!variable_global_exists("musica_ligada")) {
    global.musica_ligada = true;
}


if (global.musica_ligada) {
    // Desligar música
    audio_stop_sound(global.musica_fundo);
    global.musica_ligada = false;
    texto = "Música: Desligada";
} else {
    // Ligar música novamente
    global.musica_fundo = audio_play_sound(Fundomusical, 1, true);
    audio_sound_gain(global.musica_fundo, global.volume_musica, 0);
    global.musica_ligada = true;
    texto = "Música: Ligada";
}
