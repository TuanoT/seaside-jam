
function replenish_fish(inst, max_fish=6) {
	if inst != noone and inst.active and inst.fish < max_fish {
		with inst {
			fish++;
		
			// Bubbles
			alarm[1] = 4;
			repeat 2 {
				instance_create_depth(x+irandom(64), y+irandom(64), depth+1, obj_ocean_bubbles);	
			}
		}
	}
}