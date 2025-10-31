// VERIFICAR SE ESTAMOS NUMA ROOM QUE DEVE TER PAUSE
// Adicione suas rooms de jogo aqui (não menus!)
var game_rooms = [Room_1,Room_1_1,Room_1_2,Room_1_3,Room_2,Room_2_1,Room_2_2,Room_3,Room_3_1,Room_3_2,Room_4,Room_5,Room_6,Room_7,Room_7_1,Room_8,Room_8_1,Room_9,Room_9_1,Room_9_2,Room_test]; // SUBSTITUA pelas suas rooms

var allow_pause = false;
for (var i = 0; i < array_length(game_rooms); i++) {
    if (room == game_rooms[i]) {
        allow_pause = true;
        break;
    }
}

// Se não é uma room que permite pause, destruir menu e sair
if (!allow_pause) {
    if (paused) {
        paused = false;
        instance_activate_all();
    }
    with (obj_pause_menu) instance_destroy();
    exit;
}



if (keyboard_check_pressed(pause_key) || keyboard_check_pressed(pause_key_alt)) {
    // Alternar entre pausado e despausado
    paused = !paused;
    
    if (paused) {
        show_debug_message("Jogo pausado");
        
        // 1. Pausar todas as instâncias (exceto este controlador)
        instance_deactivate_all(true);
        
        // 2. Reativar apenas o controlador e futuramente o menu
        instance_activate_object(obj_pause_controller);
        
        // 3. Criar menu de pause
        if (!instance_exists(obj_pause_menu)) {
            instance_create_depth(0, 0, -1000, obj_pause_menu);
        }
        
    } else {
        show_debug_message("Jogo despausado");
        
        // 1. Reativar todas as instâncias
        instance_activate_all();
        
        // 2. Destruir menu de pause
        with (obj_pause_menu) {
            instance_destroy();
        }
    }
}