
// Deactivate if pier built
if place_meeting(x, y, obj_pier_segment) {
	active = false;
}

selected = global.selected_segment && global.selected_segment.y == y && active;