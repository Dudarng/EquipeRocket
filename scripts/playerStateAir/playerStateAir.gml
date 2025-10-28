function playerStateAir() {
	if state_is_new
	{
		state_is_new = !state_is_new
	}

	if on_ground() && yvel >= 0
	{
		state_current = playerStateGround
		exit;
	}

	yvel += 0.17

	if yvel > 3
		yvel = 3


}
