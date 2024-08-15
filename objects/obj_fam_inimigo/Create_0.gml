////todo  inimigo precisa conter

//1* alpha = lerp(alpha,0,00.1) ---- para efeito (evento step)
//2* /////efeito
/*draw_self()

if alpha > 0 
{
gpu_set_fog(true,color,0,0)	

draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,alpha)
gpu_set_fog(false,color,0,0)	
}
------------------------------------para funcionar o efeito (evento draw)

//3* ////variaveis

/////tomar empurrao
empurrar_veloc = 0
empurrar_dir = 0
hit = false


////efeito
alpha = 0
color = c_white
------------------------------------ (evento create)