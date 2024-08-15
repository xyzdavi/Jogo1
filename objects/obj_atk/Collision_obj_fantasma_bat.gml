//other.vida -= obj_player.dano

var _dir = point_direction(obj_player.x,obj_player.y,other.x,other.y)
other.empurrar_dir = _dir
other.empurrar_veloc = 6
other.estado = scr_inimigo_hit

other.alarm[2] = 180;
other.alpha = 1
//other.alarm[
