/// @description Record GIF

if keyboard_check_pressed(ord("G"))
{
	gifrecord = !gifrecord
	
	if gifrecord
	{
		gif = gif_open(640, 320)
	}
	else
	{
		gif_save(gif, "recording.gif")
	}
}

if gifrecord
	gif_add_surface(gif, application_surface, 2)
	
