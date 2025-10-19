  if(global.pause){
	image_speed = 0
	exit 
	} 
	
else{
	image_speed = 1 //mudar se edu fizer animacao	
}
var _chao= place_meeting(x, y + 1, obj_chao);
var _plataforma = place_meeting(x,y +1, obj_plataforma)
var _left, _right, _jump;
 
_left =keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check(inputs.jump);

velh= (_right - _left) *vel;

velv += grav;

if(room != Room_1){
if(_jump && (_chao||_plataforma)){
	velv= -vel_jump;
}
}
else{
	velv += grav;
}

