/// @description Draw line

if active && segment.target != -1 {
	var bobber_index = obj_sand.image_index;
	draw_sprite(spr_bobber, bobber_index, bobber_x, bobber_y);
	//draw_set_color(c_ltgray);
	//draw_line(x, y, bobber_x, bobber_y);
}

draw_self();