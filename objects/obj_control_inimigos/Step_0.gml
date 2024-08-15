

//////fazendo o player mudar de room
///objeto 2 faz o ataque de lá
if global.batalha = true
{

	switch (global.inimigo)
	{
	case "fantasma":
	if room != rm_batalha{ 
		room_goto(rm_batalha)
}	
	break;
	}
}
