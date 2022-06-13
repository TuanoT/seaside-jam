/// @description Init

image_speed = 0;
image_angle = irandom(3)*90;
price = 25;

audio_play_sound(snd_fish, 1, false);


// Blue fish
if y > 192 {
	price = 35;
	sprite_index = spr_fish_blue;
} else if y > 128 and choose(true, false) {
	price = 40;
	sprite_index = spr_fish_blue;
}


// Golden fish
if irandom(9) == 0 {
	sprite_index = spr_fish_gold;
	price = 75;
}