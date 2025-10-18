
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);


draw_set_color(c_white);


for (var i = 0; i < array_length(menu_options); i++) {
    var texto = menu_options[i];
    var y1 = 300 + i * 40; 


    if (i == selected)
        draw_set_color(c_yellow);
    else
        draw_set_color(c_white);

    draw_text(350, y1 -80, texto);
}

//TESTE LUIZ É FEIO
//DUDA TEM UM CABEÇAO MAIOR Q DA CALVA
