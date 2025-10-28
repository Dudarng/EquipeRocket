function move_and_collide() {
	// Avoid moving sprite when in contact with a wall
	if abs( xvel ) < 1 && wall_on_side( sign(xvel) )
	{
		xvel		= 0
		xvel_fract	= 0
	}

	// Movement/Collision X
	xvel_fract  += xvel;
	xvel		= round(xvel_fract);
	xvel_fract -= xvel;
	xdir        = sign(xvel)

	repeat(abs(xvel))
	{
		if !place_meeting(x + xdir, y, oWall)
		{
			x += xdir
		
			// Inside a slope (must go up)
			while collision_point(x, y - 1, oSlope, true, true)
			{
				if can_go_up()
					y--
				else
				{
					// Let's go back (outside slope) and stop
					x -= xdir
					xvel = 0
					xvel_fract = 0
					break
				}
			}
		
			// On a slope going down
			while !on_ground() && collision_point(x, y + 1, oSlope, true, true)
			{
				y++
			}
		}
		else
		{
			xvel = 0
			xvel_fract = 0
			break
		}
	}

	// Movement/Collision Y
	yvel_fract  += yvel;
	yvel		= round(yvel_fract);
	yvel_fract -= yvel;
	ydir        = sign(yvel)

	repeat(abs(yvel))
	{
		// Going down
		if ydir
		{
			if !on_ground()
			{
				y += ydir
			}
			else
			{
				yvel		= 0
				yvel_fract	= 0
				break
			}
		}
		// Going up
		else
		{
			if can_go_up() && !collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, oSolid, true, true)
			{
				y += ydir
			}
			else
			{
				yvel		= 0
				yvel_fract	= 0
				break
			}
		}
	}


}
