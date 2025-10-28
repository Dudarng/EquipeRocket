///@func move_platform_x(xvel_int)
///@arg xvel
function move_platform_x() {

	var xvel    = argument[0]
	var xdir    = sign(xvel)

	// Movement/Collision X
	repeat(abs(xvel))
	{
		// Colliding with solid
		if coll_x(xdir)
			return false
	
		// Pushing the player
		var player_on_sides = coll_x(xdir, oPlayer)
		if player_on_sides && false == move_x(xdir, true, player_on_sides)
			return false // Squashed between solids
			
		// Carrying the player
		var player_on_top = coll_y(-1, oPlayer)
		if player_on_top
			move_x(xdir, false, player_on_top)
			
		
		x += xdir
	
	}

	return true


}
