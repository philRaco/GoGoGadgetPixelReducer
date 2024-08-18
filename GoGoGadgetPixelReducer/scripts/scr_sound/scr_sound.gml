// Anything related to sound etc

#region scr_menu_sound

///@function scr_menu_sound

/* returns correspondent menu sound based on string. */

function scr_menu_sound(argument0){
	switch(argument0){
		case "SFXsnormal1":
			return SFXsnormal1;
		
		case "SFXsnormal2":
			return SFXsnormal2;
		
		case "SFXsnormal3":
			return SFXsnormal3;
		
		case "SFXsnormal4":
			return SFXsnormal4;
		
		case "SFXsmall1":
			return SFXsmall1;
		
		case "SFXsmall2":
			return SFXsmall2;
		
		case "SFXsmall3":
			return SFXsmall3;
		
		case "SFXtiny1":
			return SFXtiny1;
		
		case "SFXtiny2":
			return SFXtiny2;
		
		case "SFXtiny3":
			return SFXtiny3;
		
		case "SFXtiny4":
			return SFXtiny4;
		
		default:
			show_message("global.snormalS: wrong sound used!")
		break;
	}
}

#endregion

#region scr_audiovolume

///@function scr_audio_volume(soundID,volume)

function scr_audiovolume(argument0,argument1){
    audio_sound_gain(argument0,argument1,0);
	return 0;
}

#endregion