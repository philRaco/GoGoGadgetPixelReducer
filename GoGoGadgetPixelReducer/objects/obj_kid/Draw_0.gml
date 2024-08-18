/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_rectangle(bbox_left,bbox_top,bbox_right,y+14,false);

var kidKnowsY = obj_kid.y-sprite_get_yoffset(spr_player)*1.5;
var nearestColLateral = 0;
if instance_nearest(x,y,obj_col).x < x{
	nearestColLateral = instance_nearest(x,kidKnowsY,obj_col).bbox_right;
} else if instance_nearest(x,y,obj_col).x > x{
	nearestColLateral = instance_nearest(x,kidKnowsY,obj_col).bbox_left;
}

draw_set_colour(c_red);
if grabClaimed != noone{
	draw_line(grabClaimed.x,kidKnowsY,nearestColLateral,kidKnowsY);
}
scr_draw_reset();