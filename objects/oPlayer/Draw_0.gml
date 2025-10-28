/// @description Insert description here
// You can write your code in this editor

//draw_self()

var yoffset = get_yoffset_on_slopes()

var col = state_current == playerStateAir ? c_red : c_yellow

draw_sprite_ext(sprite_index, image_index, x + xvel_fract, yoffset ? yoffset : y + yvel_fract, image_xscale, image_yscale, image_angle, col, image_alpha )

var col = make_color_rgb(255, 255, 255)

if on_wall()
	col = make_color_rgb(0, 255, 0)

if on_slope()
	col = make_color_rgb(255, 0, 0)

draw_sprite_ext(sOrigin, 0, x, y, 1, 1, 0, col, 1)
