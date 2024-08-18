// atmospheric aid

///@function pebble()
//UHHHH NEEDS SOME STUFF LIKE LAYER THING

function pebble(){
	if (!place_free(x+global.kidV,y+12) && global.kidV != 0){
	    if (stepTimer > 0) && (vspeed == 0 && sprite_index != spr_player){
	        stepTimer -= 2*abs(global.kidV/MV);
	    } else if (stepTimer <= 0) && (vspeed == 0 && sprite_index != spr_player){
	        instance_create(x+global.MKdir,y+sprite_yoffset,obj_steppers); scr_audiostop(stepSound); stepSound = scr_audioplay(stepInhalt,false); obj_steppers.sprite_index = stepSpr; stepTimer = 10;
	    }
	}
}