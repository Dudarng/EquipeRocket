if (keyboard_check_pressed(vk_up)) selected--;
if (keyboard_check_pressed(vk_down)) selected++;


selected = clamp(selected, 0, array_length(menu_options) - 1);


if (keyboard_check_pressed(vk_enter)) {
    switch (selected) {
        case 0:
            room_goto(Room_game); 
            break;
        case 1:
            show_message("Configs kkkk");
            break;
        case 2:
            game_end();
            break;
    }
}