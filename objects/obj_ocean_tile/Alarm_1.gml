/// @description Bubbles

repeat 2 {
	instance_create_depth(x+irandom(64), y+irandom(64), depth+1, obj_ocean_bubbles);	
}