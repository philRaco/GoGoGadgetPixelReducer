/// @description Insert description here
// You can write your code in this editor

if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_kid,false,false){
	show_debug_message("will transition!")
	global.timeToTransition = 1;
}

if global.timeToTransition == 1{
	room_goto(global.romoor)
}