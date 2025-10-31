// Controle por teclado - SETAS e WASD
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
    selected_option--;
    if (selected_option < 0) selected_option = total_options - 1;
}

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
    selected_option++;
    if (selected_option >= total_options) selected_option = 0;
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    execute_selected_option();
}

// Controle por mouse
if (mouse_check_button_pressed(mb_left)) {
    var mx = mouse_x;
    var my = mouse_y;
    
    // Verificar cada opção do menu
    for (var i = 0; i < total_options; i++) {
        var option_y_pos = menu_start_y + (i * option_spacing);
        var text_width = string_width(menu_options[i]);
        var option_x = menu_x - (text_width / 2);
        
        // Verificar se o clique está dentro da área da opção
        if (point_in_rectangle(mx, my, option_x - 10, option_y_pos - 20, option_x + text_width + 10, option_y_pos + 20)) {
            selected_option = i;
            execute_selected_option();
            break;
        }
    }
}

// Hover do mouse
var mx = mouse_x;
var my = mouse_y;
for (var i = 0; i < total_options; i++) {
    var option_y_pos = menu_start_y + (i * option_spacing);
    var text_width = string_width(menu_options[i]);
    var option_x = menu_x - (text_width / 2);
    
    if (point_in_rectangle(mx, my, option_x - 10, option_y_pos - 20, option_x + text_width + 10, option_y_pos + 20)) {
        selected_option = i;
        break;
    }
}