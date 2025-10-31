function execute_selected_option() {
    // audio_play_sound(snd_menu_select, 1, false);
    
    switch (selected_option) {
        case 0: // Novo Jogo
            // show_debug_message("Novo Jogo selecionado");
             room_goto(Room_1);
            break;
        case 1: // Opções
         //   show_debug_message("Carregar Jogo selecionado");
			room_goto(Menu_opcoes);
            break;
        case 2: // 
      //      show_debug_message("Opções selecionado");
             game_end();
            break;
        case 3: // Sair
         //   show_debug_message("Sair selecionado");
            
			room_goto(Room_test);
            break;
    }
}