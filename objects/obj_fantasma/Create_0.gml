///inimigo no mapa

randomize();
nome = "fantasma"
// Velocidade de movimento
speed = 0.4;

// Definir direção inicial aleatória
direction = irandom(359);

// Definir tempo até a próxima mudança de direção
time_to_change_direction = irandom_range(40, 90);

// Variável para armazenar a colisão com a área
is_in_area = false;

//estado
alarm[1] = (choose(180,120))
estado = "parado"