hp -= other.attack;
image_blend = c_red; alarm[0] = 6; // flash de dano
if (hp <= 0) {
    state = "dead";
    // trocar sprite para morte, instanciar partículas, dar xp/drops
}