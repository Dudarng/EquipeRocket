var controller = instance_find(obj_controller, 0);


var phrase = "";
for (var i = 0; i < array_length(controller.selected_words); i++) {
    phrase += string(controller.selected_words[i]) + " ";
}
phrase = string_trim(phrase);


if (phrase == controller.target_phrase) {
    room_goto_next()
} else {
    show_message("❌ Wrong phrase: " + phrase);
}
 