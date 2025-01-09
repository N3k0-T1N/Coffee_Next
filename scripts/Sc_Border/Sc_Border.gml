function sc_border(obj){
	var obj_bottom = obj.y + obj.sprite_height;
	var obj_top = obj.y;
	var obj_right = obj.x + obj.sprite_width
	var obj_left = obj.x
	
	if (obj_top <= 1) {
		obj.y = 1
	}
	if (obj_left <= 1) {
		obj.x = 1
	}
	if (obj_bottom >= room_height-1) {
		obj.y =  room_height-1;
	}
	if (obj_right >= room_width-1) {
		obj_right = room_width-1;
	}
}