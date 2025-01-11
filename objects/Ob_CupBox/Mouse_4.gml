if (!position_meeting(mouse_x, mouse_y, Ob_Cup)
	&& !position_meeting(mouse_x, mouse_y, Ob_CupMilk)
	&& !position_meeting(mouse_x, mouse_y, Ob_Milk)){	
	var new_cup = instance_create_layer(mouse_x-30, mouse_y-30, "cups_layer", Ob_Cup);
}