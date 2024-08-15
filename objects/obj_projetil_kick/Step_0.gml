x+=hsp
y+=vsp


if (x<0){
	hsp=-hsp  
	
	if instance_number(obj_projetil_kick)<=2{instance_create_layer(x,y,"PLayer",obj_projetil_kickp)} 
	cor = choose(c_red, c_blue, c_green, c_yellow, c_orange, c_purple, c_black, c_white,c_gray,c_grey, c_maroon, c_navy, c_olive, c_teal,)
}
if (x>room_width){
	
	hsp=-hsp 
	if instance_number(obj_projetil_kick)<=2{instance_create_layer(x,y,"PLayer",obj_projetil_kickp)}
	cor = choose(c_red, c_blue, c_green, c_yellow, c_orange, c_purple, c_black, c_white,c_gray,c_grey, c_maroon, c_navy, c_olive, c_teal,)
}

if (y<0){
	
	vsp=-vsp 
if instance_number(obj_projetil_kick)<=2{instance_create_layer(x,y,"PLayer",obj_projetil_kickp)}
	cor = choose(c_red, c_blue, c_green, c_yellow, c_orange, c_purple, c_black, c_white,c_gray,c_grey, c_maroon, c_navy, c_olive, c_teal,)
}
if (y>room_height){ 
	
	vsp=-vsp 
if instance_number(obj_projetil_kick)<=2{instance_create_layer(x,y,"PLayer",obj_projetil_kickp)}
	cor = choose(c_red, c_blue, c_green, c_yellow, c_orange, c_purple, c_black, c_white,c_gray,c_grey, c_maroon, c_navy, c_olive, c_teal,)
}