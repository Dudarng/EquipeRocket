 // --- Configuração inicial do som ---
audio_stop_all();

// Toca a música de fundo em loop
global.musica_fundo = audio_play_sound(Fundomusical, 1, true);

// Define volumes (0 = mudo, 1 = máximo)
global.volume_musica = 0.7;
global.volume_sfx = 1;

// Aplica volume à música
audio_sound_gain(global.musica_fundo, global.volume_musica, 0);