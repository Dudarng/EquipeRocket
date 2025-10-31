// Configurações
menu_width = 300;
menu_height = 200;
menu_x = room_width / 2 - menu_width / 2;
menu_y = room_height / 2 - menu_height / 2;
depth = -1000;

// Opções
options = ["Continuar", "Salvar Jogo", "Carregar Jogo", "Reiniciar", "Menu Principal", "Sair"];
selected_option = 0;
total_options = array_length(options);

// AGUARDAR um frame para verificar o estado do controlador
// Isso evita o erro de timing
wait_frame = true;
