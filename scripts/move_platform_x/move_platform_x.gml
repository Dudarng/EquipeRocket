 ///@func move_platform_x(xvel_int)
///@arg xvel
//funacao para mover a plataforma horizontalmente
function move_platform_x() {
	
	//velocidade e direcao
	var xvel    = argument[0]
	var xdir    = sign(xvel)

	// movimento/colisao x
	repeat(abs(xvel))
	{
		// verifica colisao
		if (coll_x(xdir, oStopMove) || coll_x(xdir, oWall))
			return false;

	
		// Empurra o player
		var player_on_sides = coll_x(xdir, oPlayer)
		if player_on_sides && false == move_x(xdir, true, player_on_sides)
			return false //o player ta enter a plataforma e uma "parede"
			
		// carrega o player
		var player_on_top = coll_y(-1, oPlayer)
		if player_on_top
			move_x(xdir, false, player_on_top)
			
		//move a plataforma
		x += xdir
	
	}

	return true


}
