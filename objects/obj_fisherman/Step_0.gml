/// @description Move idk

if y - ystart >= y_distance {
	vspeed = 0;
	active = true;
}


// Find bobber pos
var no_bobber = !point_in_rectangle(bobber_x, bobber_y, segment.target.x, segment.target.y, segment.target.x+64, segment.target.y+64);
if active && segment.target != -1 && no_bobber {
	bobber_x = segment.target.x + irandom_range(8, 56);
	bobber_y = segment.target.y + irandom_range(8, 56);
	
	// Set fish alarm
	var frames = irandom_range(min_time, max_time) * 60;
	//frames = 60;
	alarm[0] = frames;
	if !audio_is_playing(snd_cast) {
		audio_play_sound(snd_cast, 1, false);
	}
}