draw_set_font(fnt_principal)
draw_set_color(c_white)
draw_text(20,20,alarm[1])
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();
var _texto = string_copy(texto[pagina],0,caractere)

var _xx = 0
var _yy = _guia - 200

var _c = c_black

draw_rectangle_color(_xx,_yy,_guil,_guia ,_c,_c,_c,_c,0)
draw_rectangle_color(_xx,_yy ,_guil ,_guia ,c_white,c_white,c_white,c_white,100)
draw_text(_xx+32,_yy+32,_texto)


draw_text(20,20,alarm[1])

/////parte1
if _texto = "LUTE CONTRA UM INIMIGO, OU MORRA!"{if alarm[1] = -1{alarm[1] = 10}}