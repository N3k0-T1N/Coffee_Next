if (global.dragged_object == noone) {
    global.dragged_object = id;
    layer = layer_get_id("held_layer");
	//sprite_index = Sp_BrokenCup;

    dragging = true;
    offset_x = mouse_x - x;
    offset_y = mouse_y - y;
}