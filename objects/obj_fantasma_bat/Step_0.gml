script_execute(estado)
alpha = lerp(alpha,0,0.01)

if atksurpresa == true
{
/////criar o ataque que solta 8 bglho em diferentes direçõeskkkkkk
	
}

if velocidade =16 or velocidade=-16
{
	obj_control_inimigos_2.texto = "AAIIII A MORTE DOIIIII"
instance_destroy();	
}else if velocidade = 8 or velocidade = -8{
		obj_control_inimigos_2.texto = "PORQUE VOCÊ ME BATE???"
}else {
		obj_control_inimigos_2.texto = "EU SOU O INIMIGO ZOADO PELO CRIADOR, ME AJUDE E ENCOSTE NESSAS BOLAS "
}

y = wave(yis-3,yis+3,2,2)
x+= velocidade