// Alterna sprite
if (sprite_index == luz__1_) {
    sprite_index = luz__2_;
} else {
    sprite_index = luz__1_;
}

// Diminui o número de piscadas restantes
vezes_piscar -= 1;

// Continua piscando até acabar
if (vezes_piscar > 0) {
    alarm[1] = intervalo_piscar;
} else {
    // Se quiser, define uma sprite final
    sprite_index = luz__2_;
}
