

 if(surface_exists(luz)){
	 
	 surface_set_target(luz)
	 
	 draw_set_alpha(1)
	 draw_set_color (c_black)
	 
	 draw_rectangle(0,0,room_width, room_height, 0)
	 
	 
	 draw_set_alpha(1)
	 draw_set_color(c_white)
	 
	 
	 gpu_set_blendmode(bm_subtract)
	 draw_circle(380,230,100,0)
	 gpu_set_blendmode(bm_normal)
	 surface_reset_target()
	draw_surface(luz,0,0)
 }
 else{
	luz = surface_create(room_width, room_height )
 }