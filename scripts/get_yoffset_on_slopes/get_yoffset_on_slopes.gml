//funcao para as rampas
function get_yoffset_on_slopes() {

	var slope = on_slope()

	if !slope
		return 0
	//verifica se tal na wall
	if slope.object_index == oSlopeWall
		return 0
	//inicia o tamanho das rampas e calcula angulo
	var slope_height    = abs(slope.sprite_height)
	var slope_base      = abs(slope.sprite_width)
	var angle           = arctan(slope_height / slope_base)

	// verifica se ta para direita
	if slope.image_xscale < 0
	{
	    if x < slope.bbox_right
			return slope.bbox_bottom - (x + xvel_fract - slope.bbox_left) * tan(angle)
		else
			return slope.bbox_top
	}

	// ou esquerda
	else if slope.image_xscale > 0
	{ 
		if x > slope.bbox_left
	        return slope.bbox_top + (x + xvel_fract - slope.bbox_left) * tan(angle)
	    else
	        return slope.bbox_top
	}


}
