// Se precisamos esperar um frame, verificar agora
if (variable_instance_exists(self, "wait_frame")) {
    // Verificação segura após primeiro frame
    if (!instance_exists(obj_pause_controller) || !obj_pause_controller.paused) {
        instance_destroy();
        exit;
    }
    // Limpar a flag de wait
    wait_frame = undefined;
}

// SE O JOGO NÃO ESTIVER PAUSADO, SE DESTRUIR (verificação contínua)
if (!instance_exists(obj_pause_controller) || !obj_pause_controller.paused) {
    instance_destroy();
    exit;
}

// ... resto do seu código Step Event normal
if (keyboard_check_pressed(vk_up)) {
    selected_option--;
    if (selected_option < 0) selected_option = total_options - 1;
}

if (keyboard_check_pressed(vk_down)) {
    selected_option++;
    if (selected_option >= total_options) selected_option = 0;
}

// Seleção com Enter
if (keyboard_check_pressed(vk_enter)) {
    execute_option();
}

// Seleção com mouse
if (mouse_check_button_pressed(mb_left)) {
    var mx = mouse_x;
    var my = mouse_y;
    
    // Verificar clique nas opções
    for (var i = 0; i < total_options; i++) {
        var option_y = menu_y + 60 + (i * 30);
        if (mx >= menu_x && mx <= menu_x + menu_width && 
            my >= option_y - 15 && my <= option_y + 15) {
            selected_option = i;
            execute_option();
            break;
        }
    }
}

// Voltar ao jogo diretamente com P ou ESC
if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape)) {
    // Apenas a opção "Continuar" pode ser acionada com P/ESC
    if (selected_option == 0) {
        execute_option();
    }
}