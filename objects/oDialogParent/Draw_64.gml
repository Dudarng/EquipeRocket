if (showing_dialog) {
	var text_x = 30;
	var text_y = 18;
	var height = 100;
	var border = 5;
	var padding = 16;
	
	height = string_height(current_dialog.message);
	
	if (sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);	
	}
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	

	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();

	
	var box_width = gui_w * 0.5;
	var box_x = (gui_w - box_width) / 2; 

	
	var box_y = gui_h - height - 32; 
	
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(box_x, box_y, box_x + box_width, box_y + height, false);
	
	draw_set_color(c_white);
	draw_rectangle(box_x + border, box_y + border, box_x + box_width - border, box_y + height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle(box_x + (border * 2), box_y + (border * 2), box_x + box_width - (border * 2), box_y + height - (border * 2), false);
	

	if (current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 0, box_x + (border * 3), box_y + (border * 3));
	}
	
	
	draw_set_color(c_white);
	draw_text_ext(
		box_x + text_x,
		box_y + text_y,
		current_dialog.message,
		16,
		box_width - 192
	);
	
	alpha = lerp(alpha, 1, 0.06);
}
draw_set_alpha(1);
