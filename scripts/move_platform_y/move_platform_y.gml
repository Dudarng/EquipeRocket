///@func move_platform_y(yvel_int)
///@arg yvel
//function move a plataforma verticamente
//parecido com o move horizontal
function move_platform_y() {

	var yvel    = argument[0]
	var ydir    = sign(yvel)

	repeat(abs(yvel))
	{
		
	    if coll_y(ydir)
			return false
			
		if ydir
		{
			//empurra o player para baixo se der 
			var player_below = coll_y(ydir, oPlayer)
			if player_below && false == move_y(ydir, player_below)
				return false
			//carrega o player
			var player_above = coll_y(-1, oPlayer)
			instance_deactivate_object(self)
			if player_above
				move_y(ydir, player_above)
			instance_activate_object(self)
		}
		//redundas (luiz gosta)
		if !ydir
		{
			var player_above = coll_y(ydir, oPlayer)
			if player_above && false == move_y(ydir, player_above)
				return false
		}
			
		y += ydir
	}

	return true


}
