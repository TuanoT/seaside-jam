/// @description Draw GUI

// Money label
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(8, 8, 128, 40, false);
draw_set_alpha(1);
draw_sprite(spr_coin, 0, 24, 24);
draw_set_color(c_white);
draw_set_font(fnt_small);
draw_set_valign(fa_center);
draw_set_halign(fa_left);
draw_text(40, 24, global.money);


// Segment details
if global.selected_segment {
	
	// Box
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(8, 48, 128, 144, false);
	draw_set_alpha(1);
	
	// Text
	draw_set_color(c_white);
	draw_set_font(fnt_small);
	draw_set_halign(fa_middle);
	draw_text(68, 64, "PIER SEGMENT");
	draw_set_halign(fa_left);
	draw_text(16, 96, "Fishermen: " + string(global.selected_segment.fishermen) + "/6");
	
	// Hire button
	if global.selected_segment.fishermen < 6 {
		draw_text(16, 128, "HIRE");
		draw_sprite(spr_coin_button, 0, 64, 128);
		if global.money < global.selected_segment.fishermen*50+50 {
			draw_set_color(c_red);	
		}
		draw_text(80, 128, global.selected_segment.fishermen*50+50);
	}
} else {
	
	// Draw info button
	//draw_set_color(c_black);
	//draw_set_alpha(0.5);
	//draw_rectangle(8, 48, 40, 80, false);
	//draw_set_alpha(1);
	//draw_set_color(c_white);
	//draw_set_halign(fa_middle);
	//draw_set_valign(fa_center);
	//draw_text(24, 64, "?");
}


// Grid
if global.draw_grid {
	draw_set_alpha(0.3);
	draw_set_color(c_white);
	
	for (var xx = 0; xx < 1344; xx += 192)	{
		draw_line(xx, 0, xx, 768)	
	}
	
	for (var yy = 0; yy < 768; yy += 192)	{
		draw_line(0, yy, 1344, yy);
	}
	draw_set_alpha(1);
}