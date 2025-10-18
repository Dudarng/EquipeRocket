  var _chao= place_meeting(x, y + 1, obj_chao);

var _left, _right, _jump;

_left =keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check(inputs.jump);

velh= (_right - _left) *vel;

velv += grav;

if(_jump && _chao){
	velv= -vel_jump;
}
else{
	velv += grav;
}

