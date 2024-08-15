///objeto 2 faz o ataque de lá
if global.batalha = true
{

	switch (global.inimigo)
	{
	case "fantasma":
if !instance_exists(obj_fantasma_bat){instance_create_layer(obj_player.x + 60,obj_player.y,"Inimigos",obj_fantasma_bat)}	
	break;
	}
}
