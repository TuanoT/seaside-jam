/// @description Press buttons

if global.selected_segment && point_in_rectangle(mouse_x, mouse_y, 18, 38, 40, 46) && global.money >= global.selected_segment.fishermen*50+50 && global.selected_segment.fishermen < 6 {
	global.money -= global.selected_segment.fishermen*50+50;
	global.selected_segment.fishermen ++;
	
	// Sound
	var snd = choose(snd_coins1, snd_coins2, snd_coins3, snd_coins4);
	audio_play_sound(snd, 1, false);
	
	// Find pos for fisherman to spawn
	var xx = choose(208, 240);
	var yy = choose(-48, -32, -16);
	while position_meeting(xx, yy+global.selected_segment.y+64, obj_fisherman) {
		var xx = choose(208, 240);
		var yy = choose(-48, -32, -16);
	}
	
	// Create fisherman
	var f = instance_create_depth(xx, yy, depth-5, obj_fisherman);
	f.segment = global.selected_segment.id;
	f.y_distance = global.selected_segment.y + 64;
}