function execute_option() {
    switch (selected_option) {
        case 0: // Continuar
            // Despausar o jogo
            with (obj_pause_controller) {
                paused = false;
                instance_activate_all();
            }
            instance_destroy();
            break;
            
        case 1: // Salvar Jogo
            if (instance_exists(obj_save_manager)) {
                obj_save_manager.save_game();
                // Feedback visual simples
                show_debug_message("✅ Jogo Salvo!");
            } else {
                show_debug_message("❌ Gerenciador de save não encontrado");
            }
            break;
            
        case 2: // Carregar Jogo
            if (instance_exists(obj_save_manager)) {
                if (obj_save_manager.load_game()) {
                    // Fechar menu após carregar
                    with (obj_pause_controller) {
                        paused = false;
                        instance_activate_all();
                    }
                    instance_destroy();
                } else {
                    show_debug_message("❌ Save não encontrado!");
                }
            }
            break;
            
        case 3: // Reiniciar
            room_restart();
            break;
            
        case 4: // Menu Principal
            room_goto(Menu);
            break;
            
        case 5: // Sair
            game_end();
            break;
    }
}