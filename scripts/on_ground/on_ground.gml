///@func on_ground()
//verifica se esta tocando no "chao"
//retorna o id ou "none"
function on_ground() {

	return on_wall() || on_slope() || on_jumpthrough()


}
