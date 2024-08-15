function scr_inimigo_hit(){
scr_colisao()	
empurrar_veloc = lerp(empurrar_veloc,0,0.05);

hveloc = lengthdir_x(empurrar_veloc, empurrar_dir)
vveloc = lengthdir_y(empurrar_veloc, empurrar_dir)
}

function scr_colisao(){
	
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


function scr_fantasma_mov(){
	scr_colisao()	
	
	
	
	if sim == true
	{
		
	  if distance_to_object(obj_player) <= 15
   {
	// estado = scr_fantasma_atk1
   }else if distance_to_object(obj_player) <=40{
	 estado = scr_fantasma_atk2  
   }else{

   
 
   }  
}else{

}
}

function scr_fantasma_atk1(){
	area_batalha.cor1 = c_yellow
	
	alarm[1] = timer
	timer--;
scale_timer += 180/2 - timer/2;

alfa = 1 - timer/180;

scale = 3 + sin(scale_timer) * .2;

image_xscale = scale;
image_yscale = scale;

if timer <= 0{
	
	
	for (var i = 0; i < ds_list_size(list); i++){
		//Qual a id do objeto
		var _id = list[| i];
		
		//Aqui a gente pode fazer o que quiser com esse objeto
		audio_play_sound(snd_cat, 1, false, 1, 0, random_range(.9, 1.1));
		instance_destroy(_id);
	}
	
	scr_screenshake(8, 20);
	instance_create_layer(x, y, layer, obj_explosion);
	
	//Explode
	//instance_destroy();
}
}
	
function scr_fantasma_atk2(){
	if alarm[3] =-1 {alarm[3] = 2}

}	

function scr_fantasma_espera(){
	sim = false;
	if alarm[5] = -1{alarm[5] = 90}
}