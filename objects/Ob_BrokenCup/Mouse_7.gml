if (global.dragged_object == id) {
    layer = layer_get_id("cups_layer");
    dragging = false; 
    global.dragged_object = noone;
	
    // Проверяем, находится ли объект над "мусоркой"
    if (position_meeting(mouse_x, mouse_y, Ob_Trashcan)) {
        instance_destroy(); // Удаляем объект
    }
}
