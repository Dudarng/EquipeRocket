///@func on_jumpthrough()
///@desc returns the id of the colliding one-way platform or noone if none
function on_jumpthrough() {

	var on_platform = collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, oJumpthrough, false, true)

	if !on_platform
		return noone
	
	var inside_platform = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, oJumpthrough, false, true)

	if !inside_platform
		return on_platform

	if on_platform == inside_platform
		return noone
	
	return on_platform


}
