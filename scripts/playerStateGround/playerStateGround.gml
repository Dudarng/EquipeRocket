function playerStateGround() {
	if state_is_new
	{
		yvel		 = 0
		yvel_fract	 = 0
	
		state_is_new = !state_is_new
	}

	if !on_ground()
	{
		state_current = playerStateAir
		exit;
	}

	if keyboard_check_pressed(ord("W"))
	{
		// Player is standing completely on a one-way platform
		if keyboard_check(vk_down) && on_jumpthrough() && !on_wall() && !on_slope()
		{
			y++
			
		}
		else{
			yvel = -jump_speed
			
			
		}
		state_current = playerStateAir
		exit
	}


}
