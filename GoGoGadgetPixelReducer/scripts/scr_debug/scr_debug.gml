// Contains all features neede for debugging

#region debug_vardraw

///@function debug_vardraw(var,relative y)

function debug_vardraw(argument0,argument1){
	draw_set_font(fnt_rtm);

	draw_set_colour(c_black);
	draw_text(x,y+argument1,string(argument0));

	draw_set_colour(c_white);
	draw_text(x,y+argument1+1,string(argument0));

	scr_draw_reset();
}

#endregion

#region debug_vardrawview

///@function debug_vardrawview(var,x,y)

function debug_vardrawview(argument0,argument1,argument2){
	draw_set_font(global.chosenFont);

	draw_set_colour(c_black);
	draw_text(view_xport[0]+16+argument1,view_yport[0]+argument2,string(argument0));

	draw_set_colour(c_white);
	draw_text(view_xport[0]+16+argument1,view_yport[0]+argument2+1,string(argument0));

	scr_draw_reset();
}

#endregion