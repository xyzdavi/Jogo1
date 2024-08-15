if estado = "andando"
{
	speed = choose(0.7,0.6,0.5,0.4,0.3)	
	sprite_index = spr_fantasma_andando
if (place_meeting(x, y, obj_area_inimigo)) {
    is_in_area = true;
} else {
    is_in_area = false;
}

// Se estiver na área permitida, permitir movimento
if (is_in_area) {
    // Movimento do inimigo
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);

    // Reduzir o tempo até a próxima mudança de direção
    time_to_change_direction--;

    // Se o tempo chegou a zero, escolher uma nova direção aleatória
    if (time_to_change_direction <= 0) {
        direction = irandom(359);
        time_to_change_direction = irandom_range(30, 90);
    }
}else {
	var _dist = point_direction(x,y,obj_area_inimigo.x,obj_area_inimigo.y)
    // Parar movimento
    x += 0;
    y += 0;

    // Reprogramar rota para encontrar a área permitida
    direction = _dist
    time_to_change_direction = irandom_range(30, 90);
}
}

if estado = "parado"{
    
	if scr_fim_da_animacao(){
	estado = "andando"
	}else{
	sprite_index = spr_fantasma_assustando
	}
	speed = 0
	direction = -1
	time_to_change_direction = -1
}