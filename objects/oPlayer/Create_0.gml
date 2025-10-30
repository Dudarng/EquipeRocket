/// @description Basic player object

xaxis		= 0
yaxis		= 0

platformer_init()

state_current = playerStateGround
state_is_new  = true
state_timer	  = 0

gifrecord	= false
gif			= noone

jump_speed          = 4.7
walk_speed          = 2.23
grav                = 0.17
terminal_velocity   = 3

 //surface_resize(application_surface, 640, 320)
// window_set_fullscreen(true)