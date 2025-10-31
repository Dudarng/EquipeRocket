// Room Start Event - executado quando a room COMEÇA
// No INÍCIO do Create Event ou Room Start Event:
if (variable_instance_exists(self, "room_initialized")) {
    // Já passou por aqui antes - resetar pause
    paused = false;
    with (obj_pause_menu) instance_destroy();
    instance_activate_all();
} else {
    room_initialized = true;
}