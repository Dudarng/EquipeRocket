global.musica_ligada = true;
// Inicializar variável de pause


// Garante que todas as variáveis globais existam
if (!variable_global_exists("musica_ligada")) {
    global.musica_ligada = true;
}

if (!variable_global_exists("musica_fundo")) {
    global.musica_fundo = audio_play_sound(Fundomusical, 1, true);
}

global.volume_musica = 0.7;
global.volume_sfx = 1;