/// @description Insert description here
// You can write your code in this editor

switch(state){
	case "Grow":
		sprite_index = spr_dirt1;
	break;
	case "Shrink":
		sprite_index = choose(spr_doodle1,spr_doodle2,spr_doodle3);
	break;
}