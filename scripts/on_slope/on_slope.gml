///@func on_slope()
//colisao com rampa retorna id ou none
function on_slope() {

	return collision_point(x, bbox_bottom + 1, oSlope, true, true)


}
