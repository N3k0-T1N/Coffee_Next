if (global.dragged_object == noone) {
    global.dragged_object = id;
    layer = layer_get_id("held_layer");
	
	depth = 97;
    dragging = true;
    offset_x = mouse_x - x;
    offset_y = mouse_y - y;
}