/// @description 

if position_meeting(mouse_x, mouse_y, id) and global.hovering == -1 {
	global.hovering = id;
	image_index = 1;
	
	// Sell
	if mouse_check_button_pressed(mb_left) {
		instance_destroy();
		global.money += price;
		
		var t = instance_create_depth(x, y, 0, obj_money_label);
		t.text = price;
		
		var snd = choose(snd_coins1, snd_coins2, snd_coins3, snd_coins4);
		audio_play_sound(snd, 1, false);
	}
} else {
	image_index = 0;	
}