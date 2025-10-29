///@func coll_x(xdir, [obj])
//funcao para verificar colisao horizontal
//recebe 2 argumentos xdir = direcao , obj = objeto testado (opcional)
function coll_x() {

	var xdir = argument[0]
	var obj = argument_count == 2 ? argument[1] : oWall
	
	//diz qual lado de teste
	var side_to_check = xdir ? bbox_right + 1 : bbox_left - 1
	
	//"cria " um retangulo ao lado do obj e faz o teste de colisao
	return collision_rectangle(side_to_check, bbox_top, side_to_check, bbox_bottom, obj, false, true)
	//retorna apos a verificação id ou "none"

}
