///@func wall_on_side(xdir)
///@arg xdir
function wall_on_side() {

	var side_to_check = argument[0] ? bbox_right + 1 : bbox_left - 1

	return collision_rectangle(side_to_check, bbox_top, side_to_check, bbox_bottom, oWall, false, true)


}
