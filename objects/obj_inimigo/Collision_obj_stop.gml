// Inverte a direção
direcao *= -1;

// Atualiza o sprite para espelhar
image_xscale = direcao;

// Move um pouco para fora da colisão (para evitar travar)
x += direcao * 2;
