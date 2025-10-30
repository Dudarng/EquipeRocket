///@func on_jumpthrough()
//verifica se o player esta em cima da plataforma que da pra atravessar
function on_jumpthrough() {

	//plataforma em baixo?
	var on_platform = collision_rectangle(bbox_left, bbox_bottom + 1 , bbox_right, bbox_bottom +1  , oJumpthrough, false, true)
	
	if !on_platform
		return noone
	//player dentro da plataforma?
	var inside_platform = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, oJumpthrough, false, true)
	
	if !inside_platform
		return on_platform

	if on_platform == inside_platform
		return noone
	
	return on_platform


}
