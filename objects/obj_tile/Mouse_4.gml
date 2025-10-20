// Checa se o bloco está ao lado do espaço vazio
var dx = abs((x - 150)/tile_size - empty_x);
var dy = abs((y - 150)/tile_size - empty_y);

if((dx == 1 && dy == 0) || (dx == 0 && dy == 1)){
    // Troca a posição lógica
    var tmp = tiles[# (x - 150)/tile_size, (y - 150)/tile_size];
    tiles[# (x - 150)/tile_size, (y - 150)/tile_size] = noone;
    tiles[# empty_x, empty_y] = id;

    // Atualiza posição do bloco no mundo
    var old_x = empty_x;
    var old_y = empty_y;
    empty_x = (x - 150)/tile_size;
    empty_y = (y - 150)/tile_size;

    x = 150 + old_x * tile_size;
    y = 150 + old_y * tile_size;
}
 