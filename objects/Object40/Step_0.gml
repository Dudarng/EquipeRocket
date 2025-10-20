
var touching_vertical = collision_rectangle(bbox_left-1,bbox_top,bbox_right+1,bbox_bottom,obj_slide_empty,false,false)
var touching_horizontal = collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_bottom+1,obj_slide_empty,false,false)

var mt = obj_slide_empty

switch(slide_state) {

	case SLIDE_STATE.SHUFFLING:
	
		if global.shuffle_counter <= 0 {
			slide_state = SLIDE_STATE.READY	
		}
	
		break;
		
	case SLIDE_STATE.SLIDING:
		
		moving_vert = choose(true,false)
		if mt.x < mt.new_x {
			mt.x += global.move_speed	
		}
		else if mt.x > mt.new_x {
			mt.x -= global.move_speed	
		}
		else if mt.y < mt.new_y {
			mt.y += global.move_speed	
		}
		else if mt.y > mt.new_y {
			mt.y -= global.move_speed	
		}
		else {
			empty_slide_done = true	
		}
	
		if x < new_x {
			x += global.move_speed	
		}
		else if x > new_x {
			x -= global.move_speed	
		}
		else if y < new_y {
			y += global.move_speed	
		}
		else if y > new_y {
			y -= global.move_speed	
		}
		else {
			if empty_slide_done {
				slide_state = SLIDE_STATE.READY
			}
		}
	
		break;
		
	case SLIDE_STATE.READY:
	
		if global.correct_tiles > 7 {
			slide_state = SLIDE_STATE.FINISHED	
		}
		else {
			global.correct_tiles = 0	
		}
	
		empty_slide_done = false
	
		if mouse_check_button_released(mb_left) and point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height) {
			
			if touching_horizontal or touching_vertical {
				
				new_x = obj_slide_empty.x 
				new_y = obj_slide_empty.y 
				
				obj_slide_empty.new_x = x
				obj_slide_empty.new_y = y
				with(Object40) {
					if new_x == initial_x and new_y == initial_y {
						global.correct_tiles ++	
					} 
				}

				slide_state = SLIDE_STATE.SLIDING
				
				
			}
			
		}
	
		break;
		
	case SLIDE_STATE.FINISHED:
	
		global.game_finished = true
	
		break;
		
}

if instance_exists(obj_slide_empty) {
	if obj_slide_empty.shuffle_state == SHUFFLE_STATE.DONE {
		if image_alpha < 1 {
			image_alpha += 0.1	
		}
	}
}