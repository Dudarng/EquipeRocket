///@func on_ground()
///@desc return instance_id of the colliding ground object or noone if not colliding
function on_ground() {

	return on_wall() || on_slope() || on_jumpthrough()


}
