/// @description Hovering thing

// Select self
if (point_in_rectangle(mouse_x, mouse_y, x, y, x+64, y+64) && type != "" && global.hovering == -1) || global.selected_segment == id {
	image_index = 1;
} else {
	image_index = 0;	
}