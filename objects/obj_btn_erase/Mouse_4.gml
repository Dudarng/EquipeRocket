var controller = instance_find(obj_controller, 0);

if (array_length(controller.selected_words) > 0) {
    array_pop(controller.selected_words); // remove o último elemento do array
}
 