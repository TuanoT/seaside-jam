/// @description Buy new segment

if global.money >= price {
	var new_seg = instance_create_depth(x, y, depth, obj_pier_segment);
	new_seg.type = "fishery";
	y += 64;
	audio_play_sound(snd_pier, 1, false);
	global.money -= price;
	global.hovering = 0;
}