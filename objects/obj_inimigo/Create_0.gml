 hp = 100
 amount = 0

hp -= amount;
speed = 2;
state = "patrol"; // states: "patrol","chase","attack","dead"
dir = 1; // 1 = direita, -1 = esquerda
patrol_left = x - 128;
patrol_right = x + 128;
vision_range = 200;
attack_range = 32;
attack_cooldown = 0;