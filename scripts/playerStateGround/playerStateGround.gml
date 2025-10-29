//funcao pra quando ta no chao
function playerStateGround() {
	if state_is_new
	{
		yvel		 = 0
		yvel_fract	 = 0
	
		state_is_new = !state_is_new
	}
//verifica se esta no chao
	if !on_ground()
	{
		state_current = playerStateAir
		exit;
	}
//pulo 
	if keyboard_check_pressed(ord("W"))
	{
		//desce da plataforma (ta bugado)
		if keyboard_check_pressed(ord("S")) && on_jumpthrough() && !on_wall() && !on_slope()
		{
			y++
			
		}
		//pula normal se não tivar na plataforma que atravessa
		else{
			yvel = -jump_speed
			
			
		}
		state_current = playerStateAir
		exit
	}


}
