if surface_exists(sombra_surface)
{
	surface_set_target(sombra_surface)
	
	draw_set_alpha(alfa)///alfa do retangulo desenhado 
	draw_set_color(cor)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_color(c_white)
	draw_set_alpha(1);
	
	gpu_set_blendmode(bm_subtract)
	
	draw_set_alpha(.30)///alfa do circulo maior
    draw_circle(obj_player.x,obj_player.y,60 + (irandom(1)),0)
	draw_set_alpha(1)
	
	draw_set_alpha(.60)///alfa do circulo menor
    draw_circle(obj_player.x,obj_player.y,40 + (irandom(1)),0)
	draw_set_alpha(1)
	
	if instance_exists(obj_davi){
		draw_set_alpha(.30)///alfa do circulo maior
    draw_circle(obj_davi.x,obj_davi.y,200 + (irandom(1)),0)
	draw_set_alpha(1)
	
	draw_set_alpha(.60)///alfa do circulo menor
    draw_circle(obj_davi.x,obj_davi.y,100 + (irandom(1)),0)
	draw_set_alpha(1)	
	
	draw_set_alpha(.60)///alfa do circulo menor
    draw_circle(obj_davi.x,obj_davi.y,60 + (irandom(1)),0)
	draw_set_alpha(1)	
	
	}

	
	///escrever tudo em cima deste codego(ou linha sla )
    gpu_set_blendmode(bm_normal)
	surface_reset_target()
}else{
	sombra_surface = surface_create(room_width,room_height)
}

draw_surface(sombra_surface,0,0)