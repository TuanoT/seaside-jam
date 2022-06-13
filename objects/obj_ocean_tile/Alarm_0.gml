/// @description Replenish fish

if active {
	alarm[0] = irandom_range(min_time, max_time)*60;
	audio_play_sound(choose(snd_bubbles1, snd_bubbles2), 1, false);
	
	// Own tile
	replenish_fish(self, 4);
	
	// Adjacent tiles (I know it's bad)
	if fish > 3 {
		replenish_fish(instance_place(x-64, y, obj_ocean_tile));
		replenish_fish(instance_place(x+64, y, obj_ocean_tile));
		replenish_fish(instance_place(x, y-64, obj_ocean_tile));
		replenish_fish(instance_place(x, y+64, obj_ocean_tile));
	}
}