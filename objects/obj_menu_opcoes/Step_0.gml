if (keyboard_check_pressed(ord("W"))) selected--;
if (keyboard_check_pressed(ord("S")))selected++;


selected = clamp(selected, 0, array_length(menu_options) - 1);


if (keyboard_check_pressed(vk_enter)) {
    switch (selected) {
        
        case 1:
            room_goto(Menu);
            break;
       
    }
}
