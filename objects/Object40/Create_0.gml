
depth = 5
image_speed = 0
image_index = 0
image_alpha = 1

sliding = false
moving_vert = choose(true,false)

initial_x = x
initial_y = y

prev_x = x
prev_y = y

new_x = x
new_y = y


enum SLIDE_STATE {
	
	SHUFFLING,
	SLIDING,
	READY,
	FINISHED
	
	
}

slide_state = SLIDE_STATE.SHUFFLING
empty_slide_done = false