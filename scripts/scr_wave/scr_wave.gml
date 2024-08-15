////outro efeito foda kkkkkkkl

function wave(){
//@@wave(from, to, duration, offset)
 
// Retorna um valor que vai alternar [from-to] sobre um tempo definido [duration]
// Exemplos
//      image_angle = Wave(-45,45,1,0)  -> Balança de frente pra trás em 90 graus em um segundo
//      x = Wave(-10,10,0.25,0)         ->  Move da esquerda para direita bem rápido
 
// Ou temos um mais divertido! Faça um objeto ficar todo molengo!! ^u^ 
//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)
// Créditos do script: @shaunspalding
// (Apenas traduzi o script pra ficar melhor de compartilhar com vocês)

a4 = (argument1 - argument0) * 0.5;
return argument0 + a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;
}
