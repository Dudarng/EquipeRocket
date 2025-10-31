// Aplicar dados carregados após a room carregar
if (instance_exists(oPlayer)) {
    oPlayer.x = loaded_data.x;
    oPlayer.y = loaded_data.y;
    oPlayer.health = loaded_data.health;
    oPlayer.score = loaded_data.score;
    oPlayer.coins = loaded_data.coins;
}