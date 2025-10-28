function get_yoffset_on_slopes() {

	var slope = on_slope()

	if !slope
		return 0

	if slope.object_index == oSlopeWall
		return 0
	
	var slope_height    = abs(slope.sprite_height)
	var slope_base      = abs(slope.sprite_width)
	var angle           = arctan(slope_height / slope_base)

	// Slope to the right
	if slope.image_xscale < 0
	{
	    if x < slope.bbox_right
			return slope.bbox_bottom - (x + xvel_fract - slope.bbox_left) * tan(angle)
		else
			return slope.bbox_top
	}

	// Slope to the left
	else if slope.image_xscale > 0
	{ 
		if x > slope.bbox_left
	        return slope.bbox_top + (x + xvel_fract - slope.bbox_left) * tan(angle)
	    else
	        return slope.bbox_top
	}


}
