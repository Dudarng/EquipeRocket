function save_game() {
    var _file = save_file_prefix + string(save_slot) + ".ini";
    
    ini_open(_file);
    
    // Dados básicos para salvar
    if (instance_exists(oPlayer)) {
        ini_write_real("player", "x", oPlayer.x);
        ini_write_real("player", "y", oPlayer.y);
        ini_write_real("player", "health", oPlayer.health);
        ini_write_real("player", "score", oPlayer.score);
        show_debug_message("📊 Dados do player salvos");
    }
    
    ini_write_string("game", "current_room", room_get_name(room));
    ini_write_string("game", "save_time", string(date_current_datetime()));
    
    ini_close();
    show_debug_message("💾 Jogo salvo no slot " + string(save_slot));
    
    return true;
}