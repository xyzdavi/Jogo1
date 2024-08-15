draw_set_alpha(1)
script_execute(estado)

////se estivermos perto de um npc
if distance_to_object(obj_par_npcs) < 10{
		 	
	//global.x = true
	if keyboard_check_pressed(ord("X"))  && global.dialogo = false {
		var _npc = instance_nearest(x,y,obj_par_npcs)
		var _dialogo = instance_create_layer(x,y,"Dialogo",obj_dialogo)
		
		_dialogo.npc_nome = _npc.nome
		}
		
	
}else{
//global.x = false

		
}

