///@func slope_move( xdir )
///@arg xdir
//movimentacao na rampa
function slope_move() {

	var _xdir = argument[0]

	//subir na rampa
	if collision_point(x, y - 1, oSlope, true, true)
	{
	    
	    if !move_y(-1)
	    {
	        x -= _xdir
	        return 0
	    }
	}

	// descer
	if !on_ground() && collision_point(x, y + 1, oSlope, true, true)
	{
	    move_y(1)
	}

	return true


}
