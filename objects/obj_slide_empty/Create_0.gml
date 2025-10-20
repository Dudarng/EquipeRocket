
depth = 7
image_speed = 0
image_index = 0
image_alpha = 0

initial_x = x
initial_y = y

prev_x = x
prev_y = y

new_x = x
new_y = y

pic_slide_done = false

enum SHUFFLE_STATE {
	
	SET_SHUFFLE,
	SLIDING,
	DONE
	
}

shuffle_state = SHUFFLE_STATE.SET_SHUFFLE

neighbor = noone

function random_neighbor(obj,px,py) {
	
    var temp_arr = []

	// LEFT
    var n = instance_position(x - sprite_width, y, obj)
	
	if n != noone {
		if n.x != px {
			array_push(temp_arr, n)
		}
	}
	
	// RIGHT
	n = instance_position(x + sprite_width, y, obj)
	
	if n != noone {
		if n.x != px {
			array_push(temp_arr, n)
		}
	}
	
	// UP
    n = instance_position(x, y-sprite_height, obj)
	
	if n != noone {
		if n.y != py {
			array_push(temp_arr, n)
		}
	}
	
	// DOWN
	n = instance_position(x, y+sprite_height, obj)
	
	if n != noone {
		if n.y != py {
			array_push(temp_arr, n)
		}
	}
	
	n = instance_position(px, py, obj)

	// ESC & RETURN
    if (array_length(temp_arr) == 0) return n
	
    return temp_arr[irandom(array_length(temp_arr) - 1)]
} 