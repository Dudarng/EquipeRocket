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

	yvel += grav

	if yvel > terminal_velocity
		yvel = terminal_velocity


}
