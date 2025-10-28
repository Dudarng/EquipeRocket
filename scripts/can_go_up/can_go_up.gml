///@func can_go_up()
///@desc return true if player's not colliding with walls/ceilings
function can_go_up() {

	return !collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top - 1, oWall, false, true)


}
