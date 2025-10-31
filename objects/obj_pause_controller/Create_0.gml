// Inicializar sempre como falso
paused = false;
pause_key = ord("P");
pause_key_alt = vk_escape;

// Auto-destruir se já existir outro
if (instance_number(obj_pause_controller) > 1) {
    instance_destroy();
    exit;
}

show_debug_message("Pause Controller criado - Estado: " + string(paused));