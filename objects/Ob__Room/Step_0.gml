spawn_person();
var obj = instance_position(mouse_x, mouse_y, all);
if (obj != noone) {
    show_debug_message("Объект под мышкой: " + string(object_get_name(obj.object_index)));
}