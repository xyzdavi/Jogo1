draw_self()
var _cor = cor1
var _alfa = wave(0.50,1,3,0)
draw_set_color(_cor)
draw_set_alpha(_alfa)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,_cor,_alfa)
draw_set_color(-1)
draw_set_alpha(-1)