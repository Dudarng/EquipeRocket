 
switch(shuffle_state) {

	case SHUFFLE_STATE.SET_SHUFFLE:
	
		pic_slide_done = false
	
neighbor = random_neighbor(Object40, prev_x, prev_y);

if (neighbor != noone) {
    neighbor.new_x = x;
    neighbor.new_y = y;
    
    new_x = neighbor.x;
    new_y = neighbor.y;
    
    shuffle_state = SHUFFLE_STATE.SLIDING;
}

	
		break;
		
	case SHUFFLE_STATE.SLIDING:
	
		if neighbor.x < neighbor.new_x {
			neighbor.x += global.shuffle_speed
		}
		else if neighbor.x > neighbor.new_x {
			neighbor.x -= global.shuffle_speed
		}
		else if neighbor.y < neighbor.new_y {
			neighbor.y += global.shuffle_speed
		}
		else if neighbor.y > neighbor.new_y {
			neighbor.y -= global.shuffle_speed
		}
		else {
			pic_slide_done = true
		}
	
		if x < new_x {
			x += global.shuffle_speed	
		}
		else if x > new_x {
			x -= global.shuffle_speed
		}
		else if y < new_y {
			y += global.shuffle_speed
		}
		else if y > new_y {
			y -= global.shuffle_speed	
		}
		else {
			if pic_slide_done {
				if global.shuffle_counter > 0 {
					global.shuffle_counter--
					shuffle_state = SHUFFLE_STATE.SET_SHUFFLE
				}
				else {
					shuffle_state = SHUFFLE_STATE.DONE	
				}
				
			}
		}
	
		break;
	
}

if global.game_finished and shuffle_state != SHUFFLE_STATE.SLIDING {
	if image_alpha < 1 {
		image_alpha += 0.01	
	}
}