 if (state == "patrol") {
    x += speed * dir;
    if (x < patrol_left) dir = 1;
    if (x > patrol_right) dir = -1;
    // checar jogador
    if (distance_to_object(obj_player) < vision_range) state = "chase";
}
else if (state == "chase") {
    if (x < obj_player.x) x += speed;
    else x -= speed;
    if (distance_to_object(obj_player) < attack_range) state = "attack";
    if (distance_to_object(obj_player) > vision_range) state = "patrol";
}
else if (state == "attack") {
    // executar ataque com cooldown
}