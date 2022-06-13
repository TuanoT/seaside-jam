/// @description Create fish object

var xx = segment.x+irandom_range(24, 40);
var yy = segment.y+irandom_range(8, 56);

instance_create_depth(xx, yy, depth+1, obj_fish);