
if inicializar = false
{
	scr_dialogo()
	alarm[0] = 1
	inicializar = true
}


if keyboard_check_pressed(ord("X")){
	if caractere < string_length(texto[pagina]){
		caractere = string_length(texto[pagina])
	}else{
		alarm[0] = 5
		caractere = 0
		
	if pagina < array_length_1d(texto) - 1{
		pagina ++
	
	}else{
		obj_controle.alarm[2] = 30
		instance_destroy()
  }
 }
}
