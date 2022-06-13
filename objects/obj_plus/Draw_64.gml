/// @description Price

var xx = (x+32)*3;
var yy = (y+16)*3;
	
draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle(xx-32, yy-12, xx+32, yy+12, false);
draw_set_alpha(1);

draw_sprite(spr_coin, 0, xx-20, yy);
	
draw_set_color(c_white);
if global.money < price {
	draw_set_color(c_red);	
}
draw_set_font(fnt_small);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(xx, yy, price);