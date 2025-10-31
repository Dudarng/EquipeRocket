// Configurar fonte e alinhamento
//draw_set_font(); // Use sua fonte ou remova esta linha
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenhar título (opcional)
draw_set_color(c_white);
draw_text(room_width / 2, menu_start_y - 80, "MEU JOGO");

// Desenhar opções do menu
for (var i = 0; i < total_options; i++) {
    var option_y_pos = menu_start_y + (i * option_spacing);
    
    // Definir cor baseada na seleção
    if (i == selected_option) {
        draw_set_color(color_selected);
        // Desenhar indicador de seleção (opcional)
        draw_text(menu_x - 100, option_y_pos, ">");
        draw_text(menu_x + 100, option_y_pos, "<");
    } else {
        draw_set_color(color_normal);
    }
    
    // Desenhar texto da opção
    draw_text(menu_x, option_y_pos, menu_options[i]);
}

// Resetar configurações
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);