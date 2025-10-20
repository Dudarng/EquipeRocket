for (var eq = 0; eq < array_length(equations); eq++) {
    var correct_eq = true;
    for (var j = 0; j < array_length(equations[eq]); j++) {
        var slot = slots[eq*5 + j]; // cada linha tem 5 slots
        if (slot.symbol == noone || slot.symbol.word != equations[eq][j]) {
            correct_eq = false;
            break;
        }
    }
    if (correct_eq) {
        draw_text(50, 50 + eq*20, "✅ Equação " + string(eq+1) + " correta!");
    }
}
 