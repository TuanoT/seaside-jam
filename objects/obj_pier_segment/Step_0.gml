/// @description Select

if mouse_check_button_pressed(mb_left) {
	
	// Select self
	if point_in_rectangle(mouse_x, mouse_y, x, y, x+64, y+64) && type != "" && global.hovering == -1 {
		global.selected_segment = id;
	}
}


// Update sprite
if place_meeting(x, y+64, obj_pier_segment) {
	sprite_index = spr_pier_segment;	
} else {
	sprite_index = spr_pier_end;	
}