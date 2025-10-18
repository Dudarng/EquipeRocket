  

var _left, _right, _jump;

_left	= keyboard_check(inputs.left);
_right	= keyboard_check(inputs.right);
_jump	= keyboard_check(inputs.jump);

velh= (_right - _left)*vel;

velv += grav; 


// caixaaaaa
var item = instance_place(x, y, obj_box);


if (item != noone && keyboard_check(ord("K"))) {
    item.isCarried = true;
    item.carrier = id;
}

else {
    with (obj_box) { 
        if (isCarried && carrier == other.id) {
            isCarried = false;
            carrier = noone;
        }
    }
} 
