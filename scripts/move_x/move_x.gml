///@func move_x(xvel, [do_slope, instance])
///@arg xvel
///@arg [do_slope]
///@arg [instance]
function move_x() {

	// Apply default arguments
	var _xvel    = argument[0]  // Notice how _xvel becomes a local variable
	var _xdir    = sign(_xvel)  // Also _xdir becomes a local
	var instance = self
	var do_slope = false
	
	// Override variable number default arguments
	switch (argument_count)
	{
	  case 3: instance = argument[2];
	  case 2: do_slope = argument[1];
	}

	with(instance)
	{
	  // Movement/Collision X
	  repeat(abs(_xvel))
	  {
	    if !place_meeting(x + _xdir, y, oWall)
	    {
	      x += _xdir

	      if do_slope && !slope_move(_xdir)
	          return 0 // We couldn't move on a slope
	    }
	    else
	      return 0 // If we collided with something, return 0
	  }
	}

	return true


}
