function playerStateGround() {
	if state_is_new
	{
		state_is_new = !state_is_new
	}

	if !on_ground()
	{
		state_current = playerStateAir
		exit;
	}

	if keyboard_check_pressed(ord("X"))
	{
		if keyboard_check(vk_down) && on_jumpthrough()
		{
			y++
		}
		else
			yvel = -3
	
		state_current = playerStateAir
		exit
	}


}
