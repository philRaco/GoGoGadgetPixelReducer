/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_kid){
	x = lerp(room_width/2,obj_kid.x,0.7);
	y = lerp(room_height/2,obj_kid.y,0.7);
} else {
	x = lerp(x,room_width/2,0.4);
	y = lerp(y,room_height/2,0.4);
}

