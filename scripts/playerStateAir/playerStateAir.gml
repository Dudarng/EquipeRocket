//funcao para quando o player ta no ar
function playerStateAir() {
	if state_is_new
	{
		state_is_new = !state_is_new
	}
	//verifica se ta tocando algum chao
	if on_ground() && yvel >= 0
	{
		state_current = playerStateGround
		exit;
	}

	yvel += grav
//velocidade de quda
	if yvel > terminal_velocity
		yvel = terminal_velocity


}
