///@func move_x(xvel, [do_slope, instance])
///@arg xvel
///@arg [do_slope]
///@arg [instance]
function move_x() {

	//evitar bug cria a  variaveis default
	var _xvel    = argument[0]  
	var _xdir    = sign(_xvel)  
	var instance = self //alvo do movimento
	var do_slope = false
	
	// se foi passado como argumento reescreve
	switch (argument_count)
	{
	  case 3: instance = argument[2];
	  case 2: do_slope = argument[1];
	}

	with(instance)
	{
	  //incremento em looping
	  repeat(abs(_xvel))
	  {
		  //verifica a colisao
	    if !place_meeting(x + _xdir, y, oWall)
	    {
	      x += _xdir
			//verifica se tem rampas
	      if do_slope && !slope_move(_xdir)
	          return 0 
	    }
	    else
	      return 0 //se colidir F no chat
	  }
	}

	return true


}
