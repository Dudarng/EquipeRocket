 /// @description Basic player object

xaxis		= 0
yaxis		= 0

xvel		= 0
yvel		= 0
xvel_fract  = 0
yvel_fract  = 0

state_current = playerStateGround
state_is_new  = true
state_timer	  = 0

gifrecord	= false
gif			= noone

surface_resize(application_surface, 640, 320)
window_set_fullscreen(true)