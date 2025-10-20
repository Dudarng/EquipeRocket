// Desenhar apenas quando a variável global indicar vitória

    var tx = display_get_gui_width() / 2;
    var ty = display_get_gui_height() / 2;
    var txt = "You win, I set you free.";
    var size = 48; // tamanho aproximado (se usar font, ajuste lá)

    // Se você tiver um recurso de fonte, defina: draw_set_font(fnt_big);
    // Senão o GameMaker usa a fonte padrão.

    // Contorno (desenha o texto 4x deslocado)
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text(tx - 2, ty - 2, txt);
    draw_text(tx + 2, ty - 2, txt);
    draw_text(tx - 2, ty + 2, txt);
    draw_text(tx + 2, ty + 2, txt);

    // Texto principal
    draw_set_color(c_white);
    draw_text(tx, ty, txt);

    // Opcional: resetar cor (bom hábito)
    draw_set_color(c_white);

