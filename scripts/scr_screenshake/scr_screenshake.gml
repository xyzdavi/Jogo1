function scr_screenshake(_amount, _force){
	with(obj_screenshake){
		shake = true;
		shake_timer = _amount;
		shake_force = _force;
	}
}