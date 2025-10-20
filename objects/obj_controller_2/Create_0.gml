randomize()

// GLOBALS
// Fonte do título
fnt_title = font_add("Arial", 64, false, false, 32, 127);

// Fonte do autor
fnt_author = font_add("Arial", 24, false, false, 32, 127);


global.move_speed = 30
global.shuffle_speed = 60

global.shuffle_counter = floor(random_range(20,50))
global.correct_tiles = 0

global.game_finished = false

text_alpha = 0

// CREATE THE BOARD

slide_arr = [noone]

columns = 0
rows = 0

offset = 50
square_size = 300

mt = noone

for (var i = 0; i < 9; i++) {
	if i == 0 {
		mt = instance_create_layer(offset,offset,"Instances",obj_slide_empty)
		rows++
	}
	else {
		slide_arr[i] = instance_create_layer(offset+(square_size*rows),offset+(square_size*columns),"Instances",Object40)
		slide_arr[i].image_index = i
		
		rows++
		if rows > 2 {
			columns++
			rows = 0
		}
	}
} 