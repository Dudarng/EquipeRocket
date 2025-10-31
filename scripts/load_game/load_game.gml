function load_game() {
    var _file = save_file_prefix + string(save_slot) + ".ini";
    
    if (!file_exists(_file)) {
        show_debug_message("❌ Arquivo de save não existe: " + _file);
        return false;
    }
    
    ini_open(_file);
    
    var _room_name = ini_read_string("game", "current_room", "");
    var _player_x = ini_read_real("player", "x", 100);
    var _player_y = ini_read_real("player", "y", 100);
    var _player_health = ini_read_real("player", "health", 100);
    var _player_score = ini_read_real("player", "score", 0);
    
    ini_close();
    
    show_debug_message("📂 Carregando save: " + _room_name);
    
    // Ir para a room salva
    var _room = asset_get_index(_room_name);
    if (_room != -1) {
        room_goto(_room);
        
        // Guardar dados para aplicar depois que a room carregar
        global.loaded_player_data = {
            x: _player_x,
            y: _player_y, 
            health: _player_health,
            score: _player_score
        };
        
        show_debug_message("✅ Jogo carregado com sucesso!");
        return true;
    }
    
    show_debug_message("❌ Room não encontrada: " + _room_name);
    return false;
}