function scr_player_parado(){

}

///scripts do player
function scr_col_player(){
	if place_meeting(x+hveloc,y,obj_col){
		while !place_meeting(x+sign(hveloc),y,obj_col){
			x+=sign(hveloc)
	}
	hveloc = 0
}

x+=hveloc

	if place_meeting(x,y+vveloc,obj_col){
		while !place_meeting(x,y+sign(vveloc),obj_col){
			y+=sign(vveloc)
	}
	vveloc = 0
}

y+=vveloc
}

function scr_mov_player(){	
	scr_col_player()
////definindo teclas de mov
esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"))
direita = keyboard_check(vk_right) or keyboard_check(ord("D"))
cima = keyboard_check(vk_up) or keyboard_check(ord("W"))
baixo = keyboard_check(vk_down) or keyboard_check(ord("S"))
rolar = mouse_check_button_pressed(mb_right)
andando = esquerda or direita or cima or baixo
var _atk = mouse_check_button_pressed(mb_left)
var _tecla = direita - esquerda != 0 || baixo - cima != 0;	

dir = point_direction(0,0,direita - esquerda,baixo - cima);

hveloc = lengthdir_x(velc * _tecla,dir);
vveloc = lengthdir_y(velc * _tecla,dir);

//x+=velh;
//y+=velv;

////sabendo a direção do mouse
move_dir = floor((point_direction(x,y,mouse_x,mouse_y)+45) /90)

///mudando sprites
switch (move_dir){
	 default:
	if andando
	{
	sprite_index = spr_player_direita_andando	
	}else{
	sprite_index = spr_player_direita_respirando
	}
	break;
	case 1:
		if andando
	{
	sprite_index = spr_player_tras_andando			
	}else{
	sprite_index = spr_player_tras_respirando
	}
	break;
	case 2:
		if andando
	{
	sprite_index = spr_player_esquerda_andando			
	}else{
	sprite_index = spr_player_esquerda_respirando
	}
	break;
	case 3:
		if andando
	{
	sprite_index = spr_player_frente_andando			
	}else{
	sprite_index = spr_player_frente_respirando	
	}
	break;
}
	

////mudar de estado para ir pro estado rolar//
if rolar and dash = true
{
	dash = false
	alarm[0] = dash_delay
	velh = 0
	velv = 0
	dash_dir = point_direction(x,y,mouse_x,mouse_y)
	estado = scr_dash_player	
}

if _atk
{
image_index = 0

	estado = scr_atk_player
    atk_dir = (point_direction(x,y,mouse_x,mouse_y))

}
}

function scr_dash_player()
{
	scr_col_player()
	image_index = 0
	////efeito foda
with instance_create_depth(x,y,depth+1,oTrail)
	{
		sprite_index = other.sprite_index
		image_blend = c_white
		image_alpha = 0.7
	}

hveloc = lengthdir_x(dash_force,dash_dir)
vveloc = lengthdir_y(dash_force,dash_dir)

dash_time++

if dash_time >= dash_distance
{
	dash_time = 0
	velh = 0
	velv = 0
	estado = scr_mov_player
}

}

function scr_atk_player()
////mudando sprite
{

	
	if atk_dir >=135 && atk_dir <=260
{
	
 	sprite_index = spr_player_esquerda_atacando
}
	
if atk_dir >=40 && atk_dir <=135
{
	sprite_index = spr_player_tras_atacando	
}
	
if atk_dir >= 315 or atk_dir<=40
{
	sprite_index = spr_player_direita_atacando
}	

if atk_dir >=225 && atk_dir <=315
{
	sprite_index = spr_player_frente_atacando
}


////separando


		 if image_index >= 1
		 {
	if atacar == false
	{
if atk_dir >=135 && atk_dir <=260
{
instance_create_layer(x - 10 , y ,"Instances",obj_atk)
}
	
if atk_dir >=40 && atk_dir <=135
{
	instance_create_layer(x,y-10,"Instances",obj_atk)
}
	
if atk_dir >= 315 or atk_dir<=40
{
	instance_create_layer(x + 10 , y ,"Instances",obj_atk)
}	

if atk_dir >=225 && atk_dir <=315
{
	instance_create_layer(x,y+19,"Instances",obj_atk)
}
atacar = true
	}
		 }
		
	if scr_fim_da_animacao()
	{
		estado = scr_mov_player;
		atacar = false
		
	}
}