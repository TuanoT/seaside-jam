/// @description Draw Text

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_alpha(alpha);

draw_text(x*3, y*3, text);
draw_sprite(spr_coin,0,  x*3-12, y*3);


// Update alpha
alpha -= .01;
if alpha <= 0 {
	instance_destroy();	
}