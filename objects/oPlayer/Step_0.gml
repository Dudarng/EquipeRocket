 /// @description Basic Player actions

kright = keyboard_check(ord("D"))
kleft  = keyboard_check(ord("A"))
kdown  = keyboard_check(ord("S"))
kup    = keyboard_check(ord("W"))


xaxis	= kright - kleft
yaxis	= kdown - kup

// calculo da velocidade
if abs(xaxis)
{
	xvel = walk_speed * xaxis
	image_xscale = (xaxis > 0) ? -1 : 1
	sprite_index = spr_bot_walk
}
else{
	xvel = 0
	sprite_index = spr_bot_idle
}
// estados
var _state_current	= state_current
script_execute(state_current)
state_is_new		= _state_current != state_current
state_timer			= state_is_new ? 0 : state_timer + 1


round_vel()

// verificacao de movimentacao e colisao pog
if !move_x(xvel_int, true)
{
    xvel       = 0
    xvel_fract = 0
}

if !move_y(yvel_int)
{
    yvel       = 0
    yvel_fract = 0
}

//caixa
var item = instance_place(x, y, obj_box);


if (item != noone && keyboard_check(ord("E"))) {
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
	