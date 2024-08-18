// Contains functions related to drawing and manipulating text.

#region scr_draw_reset

///@function scr_draw_reset()

/* Resets the drawing perameters to default */

function scr_draw_reset(){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_set_colour(c_black);

	draw_set_font_custom("default"); //*mild* relief

	draw_set_alpha(1);
	return 0;
}

#endregion

#region draw_set_font_custom

///@function draw_set_font_custom()

/* Replaces player chosen font to a bigger or smaller or fancier version. Does nothing for 1.0. */

function draw_set_font_custom(argument0){
	switch(argument0){
	    case "default":
	        draw_set_font(global.chosenFont);
	    break;
		default:
			draw_set_font(global.chosenFont);
		break;
	}
}

#endregion