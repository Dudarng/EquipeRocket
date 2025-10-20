var controller = instance_find(obj_controller, 0);


var phrase = "";
for (var i = 0; i < array_length(controller.selected_words); i++) {
    phrase += string(controller.selected_words[i]) + " ";
}
phrase = string_trim(phrase);


if (phrase == controller.target_phrase) {
	show_message("CRITela de erro: CRITICAL FAILURE DETECTED: ERR_00x125245\n\Very clever, vertical movement is not allowed, you will not get your portions, human.")

    room_goto_next()
} else {
    show_message("❌ Wrong phrase: " + phrase);
}
 