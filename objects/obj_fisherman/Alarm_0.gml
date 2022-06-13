/// @description Catch fish

if segment.target != -1 and segment.target.fish > 0 {
	segment.target.fish --;
	audio_play_sound(snd_bobber, 1, false);
	alarm[1] = 30;
}

// Set fish alarm
var frames = irandom_range(min_time, max_time) * 60;
alarm[0] = frames;