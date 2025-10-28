///@func move_y(yvel, [instance])
///@arg yvel
///@arg [instance]
function move_y() {

	var _yvel    = argument[0]
	var _ydir    = sign(_yvel)
	var instance = self

	switch (argument_count)
	{
	    case 2: instance = argument[1];
	}

	with(instance)
	{
	    repeat(abs(_yvel))
	    {
	        // Going down
	        if _ydir
	        {
	            if !on_ground()
	            {
	                y += _ydir
	            }
	            else
	                return 0
	        }
	        // Going up
	        else
	        {
	            if !wall_above()
	            {
	                y += _ydir
	            }
	            else
	                return 0
	        }
	    }
	}

	return true


}
