if (keyboard_check_pressed(vk_up)) selected--;
if (keyboard_check_pressed(vk_down)) selected++;


selected = clamp(selected, 0, array_length(menu_options) - 1);


if (keyboard_check_pressed(vk_space)) {
    switch (selected) {
        
        case 1:
            room_goto(Menu);
            break;
       
    }
}
