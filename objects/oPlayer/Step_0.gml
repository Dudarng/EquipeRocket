/// @description Basic Player actions

kright	= keyboard_check(vk_right)
kleft	= keyboard_check(vk_left)
kdown	= keyboard_check(vk_down)
kup		= keyboard_check(vk_up)

xaxis	= kright - kleft
yaxis	= kdown - kup

// Calculate speeds
if abs(xaxis)
{
	xvel = 1.23 * xaxis
	image_xscale = xaxis
}
else
	xvel = 0
	
// Simple State Machine
var _state_current	= state_current
script_execute(state_current)
state_is_new		= _state_current != state_current
state_timer			= state_is_new ? 0 : state_timer + 1

// Movement after all state calculations
move_and_collide()
	