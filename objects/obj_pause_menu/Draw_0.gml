// Versão ultra simples - apenas preto, branco e amarelo
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Painel do menu - use preto com borda branca
draw_set_color(c_black);
draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, false);
draw_set_color(c_white);
draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, true);

// Título
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(menu_x + menu_width / 2, menu_y + 20, "JOGO PAUSADO");

// Opções do menu
for (var i = 0; i < total_options; i++) {
    var option_y = menu_y + 60 + (i * 30);
    
    if (i == selected_option) {
        draw_set_color(c_yellow);
        draw_text(menu_x + 150, option_y, "> " + options[i]);
    } else {
        draw_set_color(c_white);
        draw_text(menu_x + 150, option_y, options[i]);
    }
}

// Instruções
draw_set_color(c_white);
draw_text(menu_x + 150, menu_y + menu_height - 30, "P ou ESC: Continuar");

draw_set_halign(fa_left);