if (!position_meeting(mouse_x, mouse_y, Ob_CupInHand)){	
	var new_cup = instance_create_layer(mouse_x-30, mouse_y-30, "cups_layer", Ob_CupInHand);
	// Указываем, что чашка захвачена
	new_cup.parent_box = id; // Связываем объект чашки с этой коробкой
}