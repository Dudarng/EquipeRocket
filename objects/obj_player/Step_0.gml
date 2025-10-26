// --- STEP EVENT ---
//  Pause
if (global.pause) {
    image_speed = 0;
    exit;
}

//  Input
var _left  = keyboard_check(inputs.left);
var _right = keyboard_check(inputs.right);
var _jump  = keyboard_check(inputs.jump);

velh = (_right - _left) * vel;
velv += grav;

// Pegar caixa
var _item = instance_place(x, y, obj_box);
if (_item != noone && keyboard_check(ord(" "))) {
    _item.isCarried = true;
    _item.carrier = id;
} else {
    with (obj_box) {
        if (isCarried && carrier == other.id) {
            isCarried = false;
            carrier = noone;
        }
    }
}

// Verifica chão/plataforma
var _chao = place_meeting(x, y + 1, obj_chao);
var _plat = instance_place(x, y + 1, obj_plataforma);

if (_plat != noone && global.noChao) {
    x += _plat.velocidade * _plat.direcao;
}
//Pulo
if (_jump && (_chao || _plat) && !(_chao && room == Room_1)) {
    velv = -vel_jump;
    AudioPlaySFX(queda);
}

// Colisão horizontal
var _xProx = x + velh;
if (place_meeting(_xProx, y, obj_chao) || place_meeting(_xProx, y, obj_plataforma)) {
    var p = instance_place(_xProx, y, obj_chao);
    if (p == noone) p = instance_place(_xProx, y, obj_plataforma);
    if (velh > 0) x = p.bbox_left - (bbox_right - x);
    if (velh < 0) x = p.bbox_right - (bbox_left - x);
    velh = 0;
}

//  Colisão vertical
var _yProx = y + velv;
if (place_meeting(x, _yProx, obj_chao) || place_meeting(x, _yProx, obj_plataforma)) {
    var p = instance_place(x, _yProx, obj_chao);
    if (p == noone) p = instance_place(x, _yProx, obj_plataforma);

if (velv > 0) {
    y = p.bbox_top - (bbox_bottom - y);
    global.noChao = true;

    // Move junto com a plataforma
    if (p.object_index == obj_plataforma) {
        x += p.velocidade * p.direcao;
    }
} else if (velv < 0) {
    y = p.bbox_bottom - (bbox_top - y);
}
velv = 0; 
 
} else {
    global.noChao = false;
}

// Atualiza posição
x += velh;
y += velv;

// Sprite e animação
if (velh != 0) {
    if (room != Room_1 && room != Room_1_1) sprite_index = spt_player_walk;
    else sprite_index = spr_bot_walk;
    image_xscale = sign(-velh);
    image_speed = 0.2;
} else {
 if (room != Room_1 && room != Room_1_1) sprite_index = spt_player;
    else sprite_index = spr_bot_idle;
    image_xscale = 1;
    image_speed = 0;
}
