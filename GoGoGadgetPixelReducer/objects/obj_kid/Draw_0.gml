/// @description Insert description here
// You can write your code in this editor

draw_self();

if lockedIn == true{
	draw_sprite_ext(spr_indication_throw,indSubImage,x,y,theIndScale,theIndScale,0,c_white,1);
}

if grabClaimed != noone{
	debug_vardraw(y,-32);
	debug_vardraw(grabClaimed.y,-16);
}

/*
draw_rectangle(bbox_left,bbox_top,bbox_right,y+24,false);

/*
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
*/