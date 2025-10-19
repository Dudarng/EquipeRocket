if(global.pause){
	image_speed = 0
	exit 
	} 
	
else{
	image_speed = 1 //mudar se edu fizer animacao	
}




// Mover plataforma
x += velocidade * direcao;

// Inverter direção ao chegar nos limites
if (x > limite_direita) {
    direcao = -1;
}
if (x < limite_esquerda) {
    direcao = 1;
}