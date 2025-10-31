function execute_option_sl() {
    switch (selected_option) {
        case 0: // Continuar
            obj_pause_controller.paused = false;
            instance_activate_all();
            instance_destroy();
            break;
            
        case 1: // Salvar Jogo
            if (instance_exists(obj_save_manager)) {
                obj_save_manager.save_game();
                // Feedback visual
                show_notification("Jogo Salvo!");
            }
            break;
            
        case 2: // Carregar Jogo
            if (instance_exists(obj_save_manager)) {
                if (obj_save_manager.load_game()) {
                    // Fechar menu de pause após carregar
                    obj_pause_controller.paused = false;
                    instance_destroy();
                } else {
                    show_notification("Save não encontrado!");
                }
            }
            break;
            
        case 3: // Reiniciar
            room_restart();
            break;
            
        case 4: // Menu Principal
            room_goto(rm_menu);
            break;
            
        case 5: // Sair
            game_end();
            break;
    }
}