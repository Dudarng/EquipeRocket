// Começa a arrastar
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    dragging = true;
    offset_x = mouse_x - x;
    offset_y = mouse_y - y;
}

// Movimento
if (dragging) {
    x = mouse_x - offset_x;
    y = mouse_y - offset_y;
}

// Soltar no slot
if (dragging && mouse_check_button_released(mb_left)) {
    dragging = false;
    var slot = instance_position(x + sprite_width/2, y + sprite_height/2, obj_slot);
    if (slot) {
        x = slot.x;
        y = slot.y;
        slot.symbol = id;
    }
}
