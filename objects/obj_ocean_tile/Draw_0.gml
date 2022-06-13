// Draw overlays

draw_sprite_ext(spr_ocean_overlay, 0, x, y, 1, 1, 0, c_white, .5);

// Select thing
if selected {
	draw_sprite(spr_selected, 0, x, y);
	
	if global.selected_segment.target == id {
		draw_sprite(spr_target, 0, x, y);
	}
}