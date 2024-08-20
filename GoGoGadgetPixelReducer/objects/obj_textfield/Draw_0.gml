/// @description Insert description here
// You can write your code in this editor

#region ///necessary is suppose

partText = string_copy(myText[countTexter],1,ceil(currText));
withSep = ((sprite_get_width(spr_idea)-12)/2);

#endregion

#region ///daStar

if (displayStar == true){
	if instance_exists(createdby){
		if createdby.allowTextSkip == true{
			draw_sprite_ext(spr_starbounce,floor(starFrame),view_xport[0]+nofset,view_yport[0]+nicer,1,1,0,c_white,dalpha);
		}
	} else {
		draw_sprite_ext(spr_starbounce,floor(starFrame),view_xport[0]+nofset,view_yport[0]+nicer,1,1,0,c_white,dalpha);
	}
}

#endregion

#region ///best text thingy

draw_set_font_custom("default");
draw_set_halign(myAlignment);
draw_set_valign(fa_top);
draw_set_alpha(dalpha);

draw_set_colour(c_black);
draw_text_ext(x,y,partText,sepBy,(withSep)*2);

scr_draw_reset();

#endregion