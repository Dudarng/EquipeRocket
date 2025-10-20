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
	AudioPlaySFX(queda);
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

// Guarda posições futuras
var _xProx = x + velh;
var _yProx = y + velv;

// --- COLISÃO HORIZONTAL ---
if (place_meeting(_xProx, y, obj_plataforma)) {
    var p = instance_place(_xProx, y, obj_plataforma);
    if (p != noone) {
        if (velh > 0) {
            // bateu no lado direito
            x = p.bbox_left - (bbox_right - x);
        } else if (velh < 0) {
            // bateu no lado esquerdo
            x = p.bbox_right - (bbox_left - x);
        }
        velh = 0;
    }
}

// --- COLISÃO VERTICAL ---
if (place_meeting(x, _yProx, obj_plataforma)) {
    var p = instance_place(x, _yProx, obj_plataforma);
    if (p != noone) {
        if (velv > 0) {
            // caiu em cima da plataforma
            y = p.bbox_top - (bbox_bottom - y);
            velv = 0;

            // marca que está sobre uma plataforma
            global.noChao = true;

            // acompanha o movimento da plataforma
            x += p.velocidade * p.direcao;
        } else if (velv < 0) {
            // bateu por baixo
            y = p.bbox_bottom - (bbox_top - y);
            velv = 0;
        }
    }
} else {
    // não está tocando nenhuma plataforma
    global.noChao = false;
}

// ----- COLISÃO VERTICAL -----
if (place_meeting(x, _yProx, obj_plataforma)) {
    var p = instance_place(x, _yProx, obj_plataforma);
    
    if (p != noone) {
        if (velv > 0) {
            // Caindo sobre a plataforma
            y = p.bbox_top - (bbox_bottom - y);
            
            // Andar junto com a plataforma
            x += p.velocidade * p.direcao;
        } else if (velv < 0) {
            // Batendo na parte de baixo da plataforma
            y = p.bbox_bottom - (bbox_top - y);
        }
        velv = 0; // Para o movimento vertical
    }
}