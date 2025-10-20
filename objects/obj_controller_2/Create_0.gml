// Equações fixas (só os símbolos podem ser trocados)
equations = [
    ["3", "+", "2", "=", "5"],
    ["4", "-", "1", "=", "3"],
    ["2", "*", "3", "=", "6"]
];

// Criar slots para cada equação
slots = [];
var start_y = 150;
var spacing_y = 90;

for (var i = 0; i < array_length(equations); i++) {
    for (var j = 0; j < array_length(equations[i]); j++) {
        var slot = instance_create_layer(150 + j*80, start_y + i*spacing_y, "Instances", obj_slot);
        slot.equation_id = i;
        slot.position_id = j;
        array_push(slots, slot);
        
        // Inicialmente, preencher os slots com os símbolos da equação
        var sym = instance_create_layer(slot.x, slot.y, "Instances", obj_symbol_plus);
        sym.word = equations[i][j];
        slot.symbol = sym;
    }
}
