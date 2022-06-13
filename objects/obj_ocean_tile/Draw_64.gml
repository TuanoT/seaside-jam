/// @description

if global.draw_fish_labels and active {
	var xx = (x+32)*3;
	var yy = (y+48)*3;
	
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_rectangle(xx-16, yy-12, xx+16, yy+12, false);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	if fish > 3 {
		draw_set_color(c_lime);	
	}
	draw_set_font(fnt_small);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(xx, yy, fish);
}