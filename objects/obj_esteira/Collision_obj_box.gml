instance_create_layer(other.x_inicial, other.y_inicial, layer_get_name(other.layer), obj_box);
with (other) {
    instance_destroy();
}
 