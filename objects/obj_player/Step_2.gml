if(global.pause){
    image_speed = 0;
    exit;
} 
else {
    if (velh != 0) {
        sprite_index = spt_player_walk;
        image_xscale = sign(-velh); 
        image_speed = 0.2;
    } else {
        sprite_index = spt_player;
        image_xscale = 1;         
        image_speed = 0;
    }
}


var _col = instance_place(x+velh, y, obj_chao);
if(_col)
{
	if ( velh >0)
	{
		x = _col.bbox_left +(x-bbox_right)
	}
	if (velh <0)
	{
		x = _col.bbox_right +(x-bbox_left)
	}
	
	velh = 0;
}


x += velh;

var _col = instance_place(x,y +velv, obj_chao);
if(_col)
{
	if(velv > 0)
	{
		y = _col.bbox_top + (y- bbox_bottom);
	}
	if (velv <0)
	{
		y = _col.bbox_bottom + (y- bbox_top);
	}
	velv = 0;
} 

y += velv;

// Colisão com a plataforma móvel (somente se estiver caindo)
if (velv > 0 && place_meeting(x, y + 1, obj_plataforma)) {

    var p = instance_place(x, y + 1, obj_plataforma);

    // Corrigir posição para ficar exatamente sobre a plataforma
    y = p.bbox_top - (bbox_bottom - y);
    velv = 0;

    // Andar junto com a plataforma
    x += p.velocidade * p.direcao;
}

